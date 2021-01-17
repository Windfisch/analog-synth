use stm32f1xx_hal::{stm32, timer::CountDownTimer, serial, gpio::*, gpio};
use crate::coop_threadsafe_container as ctc;
use core::cell::{RefCell, UnsafeCell};
use rtfm::Mutex;
use mcp49xx;
use cortex_m::asm::delay;
use core::fmt::Write;
use libm::*;

use crate::reverse_bits::reverse_bits;

#[derive(Clone,Copy)]
pub struct Period {
	high_time : u16, // [timer ticks]
	low_time : u16   // [timer ticks]
}

#[derive(PartialEq)]
pub enum Edge {
	Rising,
	Falling
}

const N_PERIODS : usize = 15;
const N_DROPPED_PERIODS : usize = 5;

pub struct MeasurementState {
	periods : [Period; N_PERIODS],
	index : i16, // -1 means "waiting", otherwise 0..N_PERIODS
	edge : Edge, // the currently configured EXTI edge
	last_time : u16 // [timer ticks]
}


impl MeasurementState {
	pub const fn const_default() -> MeasurementState {
		MeasurementState {
			periods: [ Period{high_time:0, low_time:0}; N_PERIODS],
			index : 0,
			edge : Edge::Rising,
			last_time : 0
		}
	}
}

type ExtiPinType = Pxx<Input<Floating>>;

// MEASUREMENT_STEP must be 64 or more. See Figure 2-6 in the MCP4822's data sheet
// which describes the 64 code effect.
const N_MEASUREMENTS : usize = 64;
const MEASUREMENT_STEP : u16 = 4096 / N_MEASUREMENTS as u16;


pub struct VoltageControlledOscillator<'a, MCP49xx> {
	dac : &'a RefCell<MCP49xx>,
	channel : mcp49xx::Channel,
	calibration : [i32; N_MEASUREMENTS],
	exti_pin : UnsafeCell<ExtiPinType>
}

impl<'a, MCP49xx> VoltageControlledOscillator<'a, MCP49xx> {
	pub fn new(dac : &'a RefCell<MCP49xx>, channel: mcp49xx::Channel, exti_pin : ExtiPinType) -> VoltageControlledOscillator<'a, MCP49xx> {
		VoltageControlledOscillator { dac, channel, calibration : [0; N_MEASUREMENTS], exti_pin: UnsafeCell::new(exti_pin) }
	}
}

pub fn handle_measurement_isr(
	token : &ctc::Token::<ctc::ISR>,
	exti_pin : &mut Pxx<Input<Floating>>,
	exti: &mut stm32::EXTI,
	mytimer : &mut CountDownTimer<stm32::TIM2>,
	pingpong : &ctc::CoopContainer<MeasurementState>
)
{
	let time = mytimer.cnt();
	
	if let Ok(mut guard) = pingpong.try_get(token) {
		// measure the time between this and the last interrupt
		let elapsed = time.wrapping_sub(guard.last_time);
		guard.last_time = time;

		if guard.edge == Edge::Rising {
			exti_pin.trigger_on_edge(exti, gpio::Edge::FALLING);
			guard.edge = Edge::Falling;

			if (guard.index >= 0) {
				let idx = guard.index as usize; // wtf rust?!
				guard.periods[idx].low_time = elapsed;
			}
			guard.index+=1;

			// if we're done measuring, inform the main thread
			if guard.index >= N_PERIODS as i16 {
				guard.give_away::<ctc::Token<ctc::Main>>();
			}
		}
		else { // Falling
			exti_pin.trigger_on_edge(exti, gpio::Edge::RISING);
			guard.edge = Edge::Rising;

			if (guard.index >= 0) {
				let idx = guard.index as usize; // wtf rust?!
				guard.periods[idx].high_time = elapsed;
			}
		}
	}

	exti_pin.clear_interrupt_pending_bit();
}

impl<DI, RES, CH, BUF, E>
	VoltageControlledOscillator<'_, mcp49xx::Mcp49xx<DI, RES, CH, BUF>>
where
	DI: mcp49xx::interface::WriteCommand<Error = E>,
	RES: mcp49xx::ResolutionSupport<E>,
	CH: mcp49xx::ChannelSupport<E>,
	BUF: mcp49xx::BufferingSupport<E>
{
	pub fn output_millicents(&mut self, millicents : i32) -> Result<(),()> {
		self.send( self.codepoint_for_millicents(millicents)? );
		Ok(())
	}

	pub fn send(&mut self, val: u16) {
		self.dac.borrow_mut().send( mcp49xx::Command::default().channel(self.channel).value(val) );
	}

	pub fn measure_freq_at(
		&mut self,
		val: u16,
		prescaler: u16,
		exti : &mut crate::resources::exti<'_>,
		exti_pin_ptr : &mut crate::resources::exti_pin_ptr<'_>,
		mytimer : &mut crate::resources::mytimer<'_>,
		pingpong : &ctc::CoopContainer<MeasurementState>,
		token: &ctc::Token::<ctc::Main>
	) -> f32
	{
		self.measure_at(val, prescaler, exti, exti_pin_ptr, mytimer, pingpong, token);

		let mut guard = pingpong.try_get(token).unwrap();
		let (freq, ratio) : (f32,f32) = (0.0,0.0);
		let mut hi_sum : u32 = 0;
		let mut lo_sum : u32 = 0;

		for i in N_DROPPED_PERIODS..N_PERIODS {
			hi_sum += guard.periods[i].high_time as u32;
			lo_sum += guard.periods[i].low_time as u32;
		}

		let clk = mytimer.lock(|mytimer| { mytimer.clk() });


		(clk * (N_PERIODS - N_DROPPED_PERIODS) as u32) as f32 / (((hi_sum + lo_sum) as u32 * (prescaler+1) as u32 ) as f32)
	}

	fn measure_at(
		&mut self,
		val: u16,
		prescaler: u16,
		exti : &mut crate::resources::exti<'_>,
		exti_pin_ptr : &mut crate::resources::exti_pin_ptr<'_>,
		mytimer : &mut crate::resources::mytimer<'_>,
		pingpong : &ctc::CoopContainer<MeasurementState>,
		token: &ctc::Token::<ctc::Main>
	)
	{
		// Send the value to the dac
		self.send(val);
		
		// Configure the timer accordingly
		mytimer.lock( |mytimer| {
			mytimer.start_raw(prescaler, 65535);
		});
		
		
		// Enable the interrupt line
		exti.lock( |exti| {
			exti_pin_ptr.lock( |exti_pin_ptr| {
				unsafe { (*self.exti_pin.get()).trigger_on_edge(&exti, gpio::Edge::RISING); }
				unsafe { (*self.exti_pin.get()).enable_interrupt(&exti); }
				*exti_pin_ptr = self.exti_pin.get();
			});
		});

		// Set up the command to the measurement task
		let mut guard = pingpong.try_get(token).unwrap(); // this must succeed
		guard.index = -1;
		guard.edge = Edge::Rising;
		guard.give_away::<ctc::Token<ctc::ISR>>();

		// Wait for its completion
		loop {
			if let Ok(mut guard) = pingpong.try_get(token) {
				
				break;
			}
		}

		// Disable the interrupt line again
		exti.lock( |exti| {
			unsafe { (*self.exti_pin.get()).disable_interrupt(&exti); }
		});
	}

	pub fn calibrate(
		&mut self,
		exti : &mut crate::resources::exti<'_>,
		exti_pin_ptr : &mut crate::resources::exti_pin_ptr<'_>,
		mytimer : &mut crate::resources::mytimer<'_>,
		pingpong : &ctc::CoopContainer<MeasurementState>,
		token: &ctc::Token::<ctc::Main>,
		tx : &mut serial::Tx<stm32::USART1>
	) {
		// Coarse calibration: Provides a coarse frequency estimate which is needed to set up the
		// measurement timer with the best-possible precision that does not yet suffer from overflows.
		const PROBE1 : u16 = 1024;
		const PROBE2 : u16 = 3072;
		let coarse_calibration_1 = self.measure_freq_at(PROBE1, 100, exti, exti_pin_ptr, mytimer, pingpong, token);
		let coarse_calibration_2 = self.measure_freq_at(PROBE2, 100, exti, exti_pin_ptr, mytimer, pingpong, token);

		writeln!(tx, "coarse calibration: {}Hz @ {}, {}Hz @ {}", coarse_calibration_1 as u32, PROBE1, coarse_calibration_2 as u32, PROBE2);

		// Fine calibration
		let timer_clock = mytimer.lock(|t|{t.clk()});
		for i in 0..N_MEASUREMENTS {
			let val = reverse_bits(i as u16, 12);
			let expected_freq = expected_frequency(val, PROBE1, coarse_calibration_1, PROBE2, coarse_calibration_2);
			let prescaler = prescaler_for_freq((expected_freq * 2.0 * 32768.0) as u32, timer_clock);
			writeln!(tx, "val {} will be around {}Hz -> choosing a prescaler of {}", val, expected_freq as u32, prescaler);

			let actual_freq = self.measure_freq_at(val, prescaler, exti, exti_pin_ptr, mytimer, pingpong, token);
			let millicents = (log2f(actual_freq) * 1200_000.0) as i32;
			writeln!(tx, "  actual frequency is {} = {} millicents", actual_freq as u32, millicents);

			let idx = val / MEASUREMENT_STEP;
			self.calibration[idx as usize] = millicents;
		}

		writeln!(tx, "Calibration data:\n\t0\t{}", self.calibration[0]);
		for i in 1..N_MEASUREMENTS as usize {
			let delta = self.calibration[i] - self.calibration[i-1];
			writeln!(tx, "\t{}\t{}\t(+{})", i, self.calibration[i], delta);
		}
	}

	pub fn codepoint_for_millicents(&self, millicents : i32) -> Result<u16, ()>
	{
		for i in 1..N_MEASUREMENTS as usize {
			let (a,b) = (self.calibration[i-1], self.calibration[i]);
			if a <= millicents && millicents < b {
				let diff = b - a;
				let offset = (MEASUREMENT_STEP as u64 * (millicents - a) as u64 / diff as u64) as u16;
				let result = (i as u16 -1)*MEASUREMENT_STEP + offset;
				return Ok(result);
				// TODO FIXME: wiggle!
			}
		}
		Err(())
	}
}

fn expected_frequency(val: u16, probe1: u16, freq1: f32, probe2: u16, freq2: f32) -> f32
{
	let octaves = log2f(freq2 / freq1); // octaves across probe1..probe2
	return freq1 * exp2f(octaves * (val as i16 - probe1 as i16) as f32 / (probe2-probe1) as f32  );
}

// returns a prescaler such that the timer increments with `freq`, i.e.
// it wraps with `freq / 65536`
fn prescaler_for_freq(freq : u32, timer_clock : u32) -> u16 {
	let psc : u32 = (timer_clock + freq - 1) / freq;
	if psc == 0 {
		return 0; // TODO proper error handling?
	}
	else if psc >= 0x10000 {
		return 0xFFFF; // TODO proper error handling
	}
	else {
		return (psc-1) as u16;
	}
}


