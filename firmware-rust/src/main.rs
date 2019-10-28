#![no_std]
#![no_main]

extern crate panic_semihosting;


use rtfm::app;

use stm32f1xx_hal::{prelude::*, stm32, gpio::*, serial, timer, spi};

use embedded_hal::digital::v2::OutputPin;

use embedded_hal::digital::v1_compat::OldOutputPin;

#[macro_use(singleton)]
extern crate cortex_m;

use cortex_m::asm::delay;
use cortex_m_rt::entry;
use stm32::interrupt;

use usb_device::prelude::*;
use stm32_usbd::UsbBus;
use usbd_midi;
mod midi;
mod vco;

use core::fmt::Write;
use core::mem::MaybeUninit;

mod coop_threadsafe_container; use coop_threadsafe_container as ctc;
use ctc::ThreadToken;

use mcp49xx;
use shared_bus;
use noop_bus_mutex;

static mut GLOB_EXTI_PIN : MaybeUninit<gpioa::PA7<Input<Floating>>> = MaybeUninit::uninit();
static mut GLOB_TX : MaybeUninit<serial::Tx<stm32::USART1>> = MaybeUninit::uninit();
static mut GLOB_TIMER : MaybeUninit<timer::CountDownTimer<stm32::TIM2>> = MaybeUninit::uninit();

struct Fnord { x : u16, y : u16 }
static PINGPONG : ctc::CoopContainer<Fnord> = ctc::CoopContainer::new(Fnord{ x : 42, y : 17 }, ctc::Token::<ctc::Main>::ID);


type MyUsbPins = (stm32f1xx_hal::gpio::gpioa::PA11<stm32f1xx_hal::gpio::Input<stm32f1xx_hal::gpio::Floating>>, stm32f1xx_hal::gpio::gpioa::PA12<stm32f1xx_hal::gpio::Input<stm32f1xx_hal::gpio::Floating>>);
type MyUsbBus = stm32_usbd::bus::UsbBus<MyUsbPins>;

// ugly kludge, because usb_dev and midi need a *borrow* of the usb bus
static mut USB_BUS : MaybeUninit<usb_device::bus::UsbBusAllocator<MyUsbBus>> = MaybeUninit::uninit();

type MySpiPins = (
	gpiob::PB13<Alternate<PushPull>>,
	gpiob::PB14<Input<Floating>>,
	gpiob::PB15<Alternate<PushPull>>
);

type MySpi = stm32f1xx_hal::spi::Spi<
	stm32::SPI2,
	MySpiPins
>;

type MySharedSpiManager = shared_bus::proxy::BusManager<
	noop_bus_mutex::NoopBusMutex<
		core::cell::RefCell<
			MySpi
		>
	>,
	MySpi
>;
type MySharedSpiProxy = shared_bus::proxy::BusProxy<'static, 
	noop_bus_mutex::NoopBusMutex<
		core::cell::RefCell<
			MySpi
		>
	>,
	MySpi
>;

type Mcp = mcp49xx::Mcp49xx<
	mcp49xx::interface::SpiInterface<
		MySharedSpiProxy,
		OldOutputPin<Pxx<Output<PushPull>>>
	>,
	mcp49xx::marker::Resolution12Bit,
	mcp49xx::marker::DualChannel,
	mcp49xx::marker::Unbuffered
>;

#[app(device = stm32)]
const APP: () = {
	struct Resources {
		// TODO
		#[init(())]
		dummy : (),
		tx : serial::Tx<stm32::USART1>,
		led : gpioc::PC13<Output<PushPull>>,
		usb_dev : usb_device::device::UsbDevice<'static, MyUsbBus>,
		midi : usbd_midi::MidiClass<'static, MyUsbBus>,
		mcp4822 : Mcp
	}

	#[init]
	fn init(cx : init::Context) -> init::LateResources {
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
		let gpio_tx = gpioa.pa9.into_alternate_push_pull(&mut gpioa.crh);
		let gpio_rx = gpioa.pa10;
		let serial = serial::Serial::usart1(
			dp.USART1,
			(gpio_tx, gpio_rx),
			&mut afio.mapr,
			serial::Config::default().baudrate(115200.bps()),
			clocks,
			&mut rcc.apb2
		);
		let (mut tx, _rx) = serial.split();
		writeln!(tx, "usart initialized").ok();

		// BluePill board has a pull-up resistor on the D+ line.
		// Pull the D+ pin down to send a RESET condition to the USB bus.
		let mut usb_dp = gpioa.pa12.into_push_pull_output(&mut gpioa.crh);
		usb_dp.set_low().ok();
		delay(clocks.sysclk().0 / 100);
		
		let usb_dm = gpioa.pa11;
		let usb_dp = usb_dp.into_floating_input(&mut gpioa.crh);

		unsafe { USB_BUS.as_mut_ptr().write( UsbBus::new(dp.USB, (usb_dm, usb_dp)) ); }
		let usb_bus = unsafe { &mut *USB_BUS.as_mut_ptr() };

		let midi = usbd_midi::MidiClass::new(usb_bus);
		let usb_dev = UsbDeviceBuilder::new(usb_bus, UsbVidPid(0x16c0, 0x27dd))
			.manufacturer("Fake company")
			.product("Serial port")
			.serial_number("TEST")
			.device_class(usbd_midi::USB_CLASS_NONE)
			.build();

		// SPI
		let mcp_ss : OldOutputPin<_> = gpiob.pb12.into_push_pull_output(&mut gpiob.crh).downgrade().into();
		let mcp2_ss : OldOutputPin<_> = gpiob.pb11.into_push_pull_output(&mut gpiob.crh).downgrade().into();
		let sck = gpiob.pb13.into_alternate_push_pull(&mut gpiob.crh);
		let mosi = gpiob.pb15.into_alternate_push_pull(&mut gpiob.crh);
		let miso = gpiob.pb14;

		let spi = spi::Spi::spi2(dp.SPI2, (sck, miso, mosi), spi::Mode { phase : spi::Phase::CaptureOnFirstTransition, polarity : spi::Polarity::IdleLow }, 500.khz(), clocks, &mut rcc.apb1);
		//let shared_spi : MySharedSpiManager = shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi);
		//let shared_spi : &'static mut MySharedSpiManager = singleton!(:MySharedSpiManager = shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi)).unwrap();
		let shared_spi = singleton!(:MySharedSpiManager =
			shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi)
		).unwrap();

		let mut mcp4822 = mcp49xx::Mcp49xx::new_mcp4822(shared_spi.acquire(), mcp_ss);
		let mut mcp4822_2 = mcp49xx::Mcp49xx::new_mcp4822(shared_spi.acquire(), mcp2_ss);

		//let arr = [mcp4822, mcp4822_2];
		/*let mut i : u16 = 0;
		loop {
			for i in 0..4096 {
				mcp4822.send(mcp49xx::Command::default().channel(mcp49xx::Channel::Ch0).value(i));
				//mcp4822.send(mcp49xx::Command::default().channel(mcp49xx::Channel::Ch1).value(4096-i));
				delay(clocks.sysclk().0 / 5000);
			}
			led.toggle();
		}*/
/*
		// EXTI
		{
		let mut nvic = p.NVIC;
		nvic.enable(stm32::Interrupt::EXTI9_5);

		let exti_pin = unsafe { &mut *GLOB_EXTI_PIN.as_mut_ptr()};
		*exti_pin = gpioa.pa7.into_floating_input(&mut gpioa.crl);
		exti_pin.make_interrupt_source(&mut afio);
		exti_pin.trigger_on_edge(&dp.EXTI, Edge::RISING_FALLING);
		exti_pin.enable_interrupt(&dp.EXTI);
		}
		
		// Timer
		unsafe { *GLOB_TIMER.as_mut_ptr() = timer::Timer::tim2(dp.TIM2, &clocks, &mut rcc.apb1).start_raw(4800, 65535); }

		main(led, usb_dev, midi);
		loop{}
		*/

		return init::LateResources { tx, led, usb_dev, midi, mcp4822 };
	}

	#[task]
	fn main(c : main::Context) {}

	extern "C" {
		fn UART4();
	}
};

/*


fn EXTI9_5() {
	let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::ISR>::new() };
	let tx = unsafe { &mut *GLOB_TX.as_mut_ptr() };
	let exti_pin = unsafe { &mut *GLOB_EXTI_PIN.as_mut_ptr() };
	let mytimer = unsafe { &*GLOB_TIMER.as_ptr() };
		
	let time = mytimer.cnt();
	writeln!(tx, "isr 9_5 {}", time).ok();
		
	if let Ok(mut guard) = PINGPONG.try_get(&token) {
		writeln!(tx, "isr: the guard is ours! {} {}, time = {}", guard.x, guard.y, time).ok();
		guard.y = time.wrapping_sub(guard.x);
		writeln!(tx, "isr: setting .y := {} and giving up ownership", guard.y).ok();
		guard.give_away::<ctc::Token<ctc::Main>>();
	}

	exti_pin.clear_interrupt_pending_bit();
}


type LedType = gpioc::PC13<Output<PushPull>>;

fn init() -> ! {
}

/*
mod mcp4822 {
	enum Channel { A, B }

	struct MCP4822<SPI : embedded_hal::spi::FullDuplex<u8>, SsPin : embedded_hal::digital::v2::OutputPin> {
		_spi : PhantomData<SPI>,
		ss_pin : SsPin
	}

	impl<SPI : embedded_hal::spi::FullDuplex<u8>, SsPin : embedded_hal::digital::v2::OutputPin> MCP4822<SPI,SsPin> {
		pub fn new(spi : &SPI, ss_pin : SsPin) -> MCP4822<SPI,SsPin> {
			MCP4822 { _spi : PhantomData{}, ss_pin : ss_pin }
		}

		pub fn write(val : u16, channel : Channel)
		{
			
		}
	}
}*/


fn main<
	Led : OutputPin,
	UsbBus : usb_device::bus::UsbBus
	> (
	mut led : Led,
	mut usb_dev : usb_device::device::UsbDevice<UsbBus>,
	mut midi : usbd_midi::MidiClass<UsbBus>) -> ! {
	let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::Main>::new() };
	let tx = unsafe { &mut *GLOB_TX.as_mut_ptr()};


	writeln!(tx, "entering main loop").ok();


	let mytimer = unsafe { &*GLOB_TIMER.as_ptr() };

	writeln!(tx, "okay. so we've a tim2 now and its clk is {}", mytimer.clk()).ok();

	loop {
		if let Ok(mut guard) = PINGPONG.try_get(&token) {
			writeln!(tx, "main: the guard is ours! {} {}", guard.x, guard.y).ok();
			guard.x = mytimer.cnt();
			writeln!(tx, "main: setting .x := {} and giving up ownership", guard.x).ok();
			guard.give_away::<ctc::Token<ctc::ISR>>();
		}

		//writeln!(tx, "loop! mytimer.cnt() == {}", mytimer.cnt()).ok();
		if usb_dev.poll(&mut [&mut midi]) {

			//midi.note_on(1, usbd_midi::Note::A4, 127).ok();

			let mut data : [u8;64] = [0;64];
			if let Ok(size) = midi.poll(&mut data)
			{
				write!(tx, "got {} bytes: ", size).ok();
				for n in 0..size {
					write!(tx, "{:02x} ", data[n]).ok();
				}
				write!(tx, "\n").ok();
				
				for i in (0..size).step_by(4) {
					let msg = midi::parse_midi(&[data[i],data[i+1],data[i+2],data[i+3]]);//FIXME there must be a better way...
					writeln!(tx, "{:?}", msg).ok();
				}

			}

			led.set_high().ok(); // Turn off
		}
	}
}
*/
