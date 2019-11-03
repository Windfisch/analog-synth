#[derive(PartialEq)]
enum Phase {
	ATTACK,
	DECAY,
	SUSTAIN,
	RELEASE,
	IDLE
}
use Phase::*;

pub struct Envelope
{
	pub attack : u16, // milliseconds
	pub decay  : u16, // milliseconds
	pub sustain: u16, // 0..65535
	pub release: u16, // milliseconds
	pub retriggerable : bool,
	pub hold : bool,  // enables the sustain phase
	pub early_release : bool,
	release_pending : bool,
	value  : u32,
	phase  : Phase
}

impl Envelope {
	pub const fn new() -> Envelope {
		return Envelope {
			attack : 1,
			decay : 400,
			sustain : (1<<15),
			release : 3000,
			retriggerable : true,
			hold : true,
			early_release : false,
			release_pending : false,
			value : 0,
			phase : IDLE
		}
	}

	pub fn trigger(&mut self) {
		if !self.retriggerable {
			self.value = 0;
		}
		self.phase = ATTACK;
	}
	pub fn release(&mut self) {
		if self.early_release || self.phase == SUSTAIN {
			self.phase = RELEASE;
		}
		else {
			self.release_pending = true;
		}
	}

	pub fn value10bit(&self) -> u16 {
		return (self.value >> 22) as u16;
	}

	pub fn tick(&mut self) {
		match self.phase {
			ATTACK => {
				self.value = self.value.saturating_add(u32::max_value() / self.attack as u32);
				if self.value == u32::max_value() {
					self.phase = DECAY;
				}
			}
			DECAY => {
				self.value = self.value.saturating_sub(u32::max_value() / self.decay as u32);
				if (self.value >> 16) as u16 <= self.sustain {
					if self.hold {
						self.value = (self.sustain as u32) << 16;
						self.phase = SUSTAIN;
					}
					else {
						self.phase = RELEASE;
						self.release_pending = false;
					}
				}
			}
			SUSTAIN => {
				if !self.hold || self.release_pending {
					self.phase = RELEASE;
					self.release_pending = false;
				}
			}
			RELEASE => {
				self.value = self.value.saturating_sub(u32::max_value() / self.release as u32);
				if self.value == 0 {
					self.phase = IDLE;
				}
			}
			IDLE => {}
		}
	}
}
