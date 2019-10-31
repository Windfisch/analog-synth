use stm32f1xx_hal::{stm32, timer::CountDownTimer, gpio::*, gpio};
use crate::coop_threadsafe_container as ctc;
use core::cell::{RefCell, UnsafeCell};
use rtfm::Mutex;
use mcp49xx;

#[derive(Clone,Copy)]
pub struct Period {
	high_time : u16,
	low_time : u16
}

#[derive(PartialEq)]
pub enum Edge {
	Rising,
	Falling
}

pub struct MeasurementState {
	periods : [Period; 10],
	index : i16,
	edge : Edge,
	last_time : u16
}

const N_PERIODS : usize = 10;

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

pub struct VoltageControlledOscillator<'a, MCP49xx> {
	dac : &'a RefCell<MCP49xx>,
	channel : mcp49xx::Channel,
	calibration : [i32; 64],
	exti_pin : UnsafeCell<ExtiPinType>
}

impl<'a, MCP49xx> VoltageControlledOscillator<'a, MCP49xx> {
	pub fn new(dac : &'a RefCell<MCP49xx>, channel: mcp49xx::Channel, exti_pin : ExtiPinType) -> VoltageControlledOscillator<'a, MCP49xx> {
		VoltageControlledOscillator { dac, channel, calibration : [0; 64], exti_pin: UnsafeCell::new(exti_pin) }
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



const N_MEASUREMENTS : u16 = 64;
const MEASUREMENT_STEP : u16 = 4096 / N_MEASUREMENTS;

impl<DI, RES, CH, BUF, E>
	VoltageControlledOscillator<'_, mcp49xx::Mcp49xx<DI, RES, CH, BUF>>
where
	DI: mcp49xx::interface::WriteCommand<Error = E>,
	RES: mcp49xx::ResolutionSupport<E>,
	CH: mcp49xx::ChannelSupport<E>,
	BUF: mcp49xx::BufferingSupport<E>
{
	pub fn set_pitch(&mut self, cents : i32) {
		// TODO: figure out which code point to send
		let TODO = 1337;
		self.send(TODO);
	}

	fn send(&mut self, val: u16) {
		self.dac.borrow_mut().send( mcp49xx::Command::default().channel(self.channel).value(val) );
	}

	fn measure_freq_at(
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

		for i in 0..N_PERIODS {
			hi_sum += guard.periods[i].high_time as u32;
			lo_sum += guard.periods[i].low_time as u32;
		}

		let clk = mytimer.lock(|mytimer| { mytimer.clk() });

		clk as f32 / ((hi_sum + lo_sum) / N_PERIODS as u32) as f32
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
				unsafe { (*self.exti_pin.get()).trigger_on_edge(&exti, gpio::Edge::FALLING); }
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
		token: &ctc::Token::<ctc::Main>
	) {
		for i in 0..N_MEASUREMENTS {

			self.measure_freq_at(i*MEASUREMENT_STEP, 42 /*TODO*/, exti, exti_pin_ptr, mytimer, pingpong, token);

		}
	}
}

