use stm32f1xx_hal::{stm32, timer};

//use cortex_m::asm::delay;

use crate::coop_threadsafe_container as ctc;

use mcp49xx;

pub struct Period {
	high_time : u16,
	low_time : u16
}

pub enum Edge {
	Rising,
	Falling
}

pub struct MeasurementState {
	periods : [Period; 10],
	index : u16,
	edge : Edge
}

struct VoltageControlledOscillator<'a, MCP49xx, ExtiPin : stm32f1xx_hal::gpio::ExtiPin> {
	dac : MCP49xx,
	channel : mcp49xx::Channel,
	calibration : [i32; 64],
	exti_pin : &'a mut ExtiPin
}

const N_MEASUREMENTS : u32 = 64;

impl<'a, DI, RES, CH, BUF, E, ExtiPin : stm32f1xx_hal::gpio::ExtiPin>
	VoltageControlledOscillator<'a, mcp49xx::Mcp49xx<DI, RES, CH, BUF>, ExtiPin>
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
		self.dac.send( mcp49xx::Command::default().channel(self.channel).value(val) );
	}

	fn measure_frequency_at(&mut self, val: u16, pingpong : &ctc::CoopContainer<MeasurementState>, exti : &stm32::EXTI, token : &ctc::Token::<ctc::Main>) {
		if let Ok(mut guard) = pingpong.try_get(token) {
			guard.index = 0;
			guard.edge = Edge::Rising;
			// TODO: self.exti_pin.trigger_on_edge(stm32f1xx_hal::gpio::Edge::RISING);

		}
		else {
			panic!();
		}

		self.send(val);
		
	}

	pub fn calibrate(
		&mut self,
		exti : &stm32::EXTI,
		mytimer : &mut timer::CountDownTimer<stm32::TIM2>,
		pingpong : &ctc::CoopContainer<MeasurementState>,
		token: &ctc::Token::<ctc::Main>
	) {
		self.exti_pin.enable_interrupt(&exti);

		for i in 0..N_MEASUREMENTS {

			//   - configure the timer
			mytimer.start_raw(0,0);
			//   - play the tone
			self.send(42);
			//   - send command to the exti
			//   - wait for its completion
			loop {
				if let Ok(mut guard) = pingpong.try_get(token) {
					break;
				}
			}
			//   - update the calibration value
		}

		self.exti_pin.disable_interrupt(&exti);
	}
}

