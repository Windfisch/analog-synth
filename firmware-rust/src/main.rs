//! CDC-ACM serial port example using polling in a busy loop.
#![no_std]
#![no_main]

extern crate panic_semihosting;
use embedded_hal::digital::v2::OutputPin;
use cortex_m::asm::delay;
use cortex_m_rt::entry;
use stm32_usbd::UsbBus;
use stm32f1xx_hal::{prelude::*, stm32};
use stm32f1xx_hal::gpio::{ExtiPin,Edge,Input,Floating};
use usb_device::prelude::*;
//use usbd_serial::{SerialPort, USB_CLASS_CDC};
use usbd_midi;

use core::fmt::Write;
use stm32::interrupt;
use core::mem::MaybeUninit;

mod coop_threadsafe_container; use coop_threadsafe_container as ctc;
use ctc::ThreadToken;
mod midi;

static mut glob_exti_pin : MaybeUninit<stm32f1xx_hal::gpio::gpioa::PA7<Input<Floating>>> = MaybeUninit::uninit();
static mut glob_tx : MaybeUninit<stm32f1xx_hal::serial::Tx<stm32::USART1>> = MaybeUninit::uninit();
static mut glob_timer : MaybeUninit<stm32f1xx_hal::timer::CountDownTimer<stm32::TIM2>> = MaybeUninit::uninit();

struct Fnord { x : u16, y : u16 }
static pingpong : ctc::CoopContainer<Fnord> = ctc::CoopContainer::new(Fnord{ x : 42, y : 17 }, ctc::Token::<ctc::Main>::ID);

#[interrupt]
fn EXTI15_10() {
	unsafe { writeln!(*glob_tx.as_mut_ptr(), "isr 15_10"); }
}
#[interrupt]
fn EXTI9_5() {
	let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::ISR>::new() };
	let mut tx = unsafe { &mut *glob_tx.as_mut_ptr() };
	let mut exti_pin = unsafe { &mut *glob_exti_pin.as_mut_ptr() };
	let mytimer = unsafe { &*glob_timer.as_ptr() };
		
	let time = mytimer.cnt();
	writeln!(tx, "isr 9_5 {}", time);
		
	if let Ok(mut guard) = pingpong.try_get(&token) {
		writeln!(tx, "isr: the guard is ours! {} {}, time = {}", guard.x, guard.y, time);
		guard.y = time.wrapping_sub(guard.x);
		writeln!(tx, "isr: setting .y := {} and giving up ownership", guard.y);
		guard.give_away::<ctc::Token<ctc::Main>>();
	}

	exti_pin.clear_interrupt_pending_bit();
}

#[entry]
fn main() -> ! {
	let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::Main>::new() };

	let dp = stm32::Peripherals::take().unwrap();
	let p = cortex_m::peripheral::Peripherals::take().unwrap();

	let mut flash = dp.FLASH.constrain();
	let mut rcc = dp.RCC.constrain();

	let clocks = rcc.cfgr
		.use_hse(8.mhz())
		.sysclk(48.mhz())
		.pclk1(24.mhz())
		.freeze(&mut flash.acr);

	assert!(clocks.usbclk_valid());

	let mut afio = dp.AFIO.constrain(&mut rcc.apb2);
	
	let mut gpioa = dp.GPIOA.split(&mut rcc.apb2);
	let mut gpiob = dp.GPIOB.split(&mut rcc.apb2);
	let mut gpioc = dp.GPIOC.split(&mut rcc.apb2);

	// Configure the on-board LED (PC13, green)
	let mut led = gpioc.pc13.into_push_pull_output(&mut gpioc.crh);
	led.set_high().ok(); // Turn off

	// Configure the USART
	let mut gpio_tx = gpioa.pa9.into_alternate_push_pull(&mut gpioa.crh);
	let mut gpio_rx = gpioa.pa10;
	let serial = stm32f1xx_hal::serial::Serial::usart1(
		dp.USART1,
		(gpio_tx, gpio_rx),
		&mut afio.mapr,
		stm32f1xx_hal::serial::Config::default().baudrate(115200.bps()),
		clocks,
		&mut rcc.apb2
	);
	let (mut tx_, mut rx) = serial.split();
	let mut tx = unsafe { &mut *glob_tx.as_mut_ptr()};
	(*tx) = tx_;
	writeln!(tx, "hello world!");

	// BluePill board has a pull-up resistor on the D+ line.
	// Pull the D+ pin down to send a RESET condition to the USB bus.
	let mut usb_dp = gpioa.pa12.into_push_pull_output(&mut gpioa.crh);
	usb_dp.set_low().ok();
	delay(clocks.sysclk().0 / 100);
	
	let usb_dm = gpioa.pa11;
	let usb_dp = usb_dp.into_floating_input(&mut gpioa.crh);
	let usb_bus = UsbBus::new(dp.USB, (usb_dm, usb_dp));

	let mut midi = usbd_midi::MidiClass::new(&usb_bus);
	let mut usb_dev = UsbDeviceBuilder::new(&usb_bus, UsbVidPid(0x16c0, 0x27dd))
		.manufacturer("Fake company")
		.product("Serial port")
		.serial_number("TEST")
		.device_class(usbd_midi::USB_CLASS_NONE)
		.build();

	// EXTI
	{
	let mut nvic = p.NVIC;
	nvic.enable(stm32::Interrupt::EXTI15_10);
	nvic.enable(stm32::Interrupt::EXTI9_5);

	let mut exti_pin = unsafe { &mut *glob_exti_pin.as_mut_ptr()};
	*exti_pin = gpioa.pa7.into_floating_input(&mut gpioa.crl);
	exti_pin.make_interrupt_source(&mut afio);
	exti_pin.trigger_on_edge(&dp.EXTI, Edge::RISING_FALLING);
	exti_pin.enable_interrupt(&dp.EXTI);
	}


	writeln!(tx, "entering main loop");

	unsafe { *glob_timer.as_mut_ptr() = stm32f1xx_hal::timer::Timer::tim2(dp.TIM2, &clocks, &mut rcc.apb1).start_raw(4800, 65535); }

	let mytimer = unsafe { &*glob_timer.as_ptr() };

	writeln!(tx, "okay. so we've a tim2 now and its clk is {}", mytimer.clk());

	loop {
		if let Ok(mut guard) = pingpong.try_get(&token) {
			writeln!(tx, "main: the guard is ours! {} {}", guard.x, guard.y);
			guard.x = mytimer.cnt();
			writeln!(tx, "main: setting .x := {} and giving up ownership", guard.x);
			guard.give_away::<ctc::Token<ctc::ISR>>();
		}

		//writeln!(tx, "loop! mytimer.cnt() == {}", mytimer.cnt());
		if usb_dev.poll(&mut [&mut midi]) {

			//midi.note_on(1, usbd_midi::Note::A4, 127).ok();

			let mut data : [u8;64] = [0;64];
			if let Ok(size) = midi.poll(&mut data)
			{
				write!(tx, "got {} bytes: ", size);
				for n in 0..size {
					write!(tx, "{:02x} ", data[n]);
				}
				write!(tx, "\n");
				
				for i in (0..size).step_by(4) {
					let msg = midi::parse_midi(&[data[i],data[i+1],data[i+2],data[i+3]]);//FIXME there must be a better way...
					writeln!(tx, "{:?}", msg);
				}

			}

			led.set_high().ok(); // Turn off
		}
	}
}
