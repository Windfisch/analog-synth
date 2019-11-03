use embedded_hal as hal;
use hal::digital::v2::OutputPin;
use core::marker::PhantomData;
use crate::reverse_bits::reverse_bits;
use cortex_m::asm::delay;

pub struct Reversed;
pub struct NotReversed;

pub trait ReverseTrait {
	fn maybe_reverse(val : u16) -> u16;
}

// "Reversed" means the the reversed pin of the chip is pulled high. Since the
// chip's bit order is reversed in general, in the "Reversed" case we would not
// need to reverse the data bits.
impl ReverseTrait for NotReversed {
	fn maybe_reverse(val : u16) -> u16 {
		reverse_bits(val, 10)
	}
}
impl ReverseTrait for Reversed {
	fn maybe_reverse(val : u16) -> u16 {
		val
	}
}

pub struct Bu2505fv<SPI : hal::blocking::spi::Write<u8>, Pin : OutputPin, IsReversed : ReverseTrait> {
	pin : Pin,
	_spi : PhantomData<SPI>,
	_rev : PhantomData<IsReversed>
}
	
pub fn create_reversed<SPI : hal::blocking::spi::Write<u8>, Pin : OutputPin>(pin : Pin, _spi : &SPI) -> Bu2505fv<SPI, Pin, Reversed> {
	Bu2505fv{ pin, _spi: PhantomData{}, _rev: PhantomData{} }
}

pub fn create_not_reversed<SPI : hal::blocking::spi::Write<u8>, Pin : OutputPin>(pin : Pin, _spi : &SPI) -> Bu2505fv<SPI, Pin, NotReversed> {
	Bu2505fv{ pin, _spi: PhantomData{}, _rev: PhantomData{} }
}


impl <SPI, Pin, SpiErr, GpioErr, IsReversed> Bu2505fv<SPI, Pin, IsReversed>
where
	SPI : hal::blocking::spi::Write<u8, Error = SpiErr>,
	Pin : OutputPin<Error = GpioErr>,
	IsReversed : ReverseTrait
{
	fn check_value(&self, value : u16) -> Result<(),Error<SpiErr,GpioErr>> {
		if value >= 1024 {
			Err(Error::InvalidValue)
		}
		else {
			Ok(())
		}
	}

	fn check_channel(&self, channel: u8) -> Result<(),Error<SpiErr,GpioErr>> {
		if channel >= 10 {
			Err(Error::InvalidChannel)
		}
		else {
			Ok(())
		}
	}

	pub fn set(&mut self, channel : u8, value : u16, spi : &mut SPI, sysclk_hz : u32) -> Result<(),Error<SpiErr,GpioErr>> {
		self.check_channel(channel)?;
		self.check_value(value)?;

		let channel_rev = reverse_bits(channel, 4);
		let value_rev = IsReversed::maybe_reverse(value);

		let payload: [u8; 2] = [
			(channel_rev << 2 ) | (value_rev >> 8) as u8,
			(value_rev & 0xFF) as u8
		];
		spi.write(&payload).map_err(Error::Spi)?;

		delay(sysclk_hz / 20_000_000); // 50ns delay
		self.pin.set_high().map_err(Error::Gpio)?;
		
		delay(sysclk_hz / 20_000_000); // 50ns delay
		self.pin.set_low().map_err(Error::Gpio)?;
		
		delay(sysclk_hz / 20_000_000); // 50ns delay

		Ok(())
	}
}

#[derive(Debug)]
pub enum Error<SpiErr, GpioErr> {
	InvalidChannel,
	InvalidValue,
	Spi(SpiErr),
	Gpio(GpioErr)
}
