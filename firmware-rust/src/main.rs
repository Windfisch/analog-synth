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

use core::cell::RefCell;

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

static PINGPONG : ctc::CoopContainer<vco::MeasurementState> = ctc::CoopContainer::new(  vco::MeasurementState::const_default(), ctc::Token::<ctc::Main>::ID);


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

type VcoType = vco::VoltageControlledOscillator<'static, Mcp, Pxx<Input<Floating>>>;
type VcoArray = [VcoType; 2];

static mut VCOS : MaybeUninit<VcoArray> = MaybeUninit::uninit();
/*trait InitOrMain {}
impl InitOrMain for init::Context {}
impl InitOrMain for main::Context<'_> {}
fn vcos<'a, T: InitOrMain>(token : & T) -> &'a mut VcoArray {
	unsafe { &mut *VCOS.as_mut_ptr() }
}*/

mod vco_token {
	use crate::{VcoArray, VCOS};
	pub struct VcoToken { dummy : () }
	impl VcoToken {
		pub const unsafe fn new() -> VcoToken { VcoToken{dummy:()} }
	}
	pub fn vcos<'a>(token : &'a mut VcoToken) -> &'a mut VcoArray {
		unsafe { &mut *VCOS.as_mut_ptr() }
	}
}

use crate::vco_token::{VcoToken,vcos};


#[app(device = stm32)]
const APP: () = {
	struct Resources {
		// TODO
		#[init(())]
		dummy : (),
		exti : stm32::EXTI,
		tx : serial::Tx<stm32::USART1>,
		led : gpioc::PC13<Output<PushPull>>,
		usb_dev : usb_device::device::UsbDevice<'static, MyUsbBus>,
		midi : usbd_midi::MidiClass<'static, MyUsbBus>,
		mytimer : timer::CountDownTimer<stm32::TIM2>,
		#[init( unsafe{VcoToken::new()} )]
		vco_token : VcoToken
	}

	//#[init(resources=[vco_token])]
	#[init(spawn=[xmain],resources=[vco_token])]
	fn init(mut cx : init::Context) -> init::LateResources {
		let dp = stm32::Peripherals::take().unwrap();
		//let p = &cx.core; //cortex_m::peripheral::Peripherals::take().unwrap();
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
			
		writeln!(tx, "spi...");

		// SPI
		let mcp_ss : OldOutputPin<_> = gpiob.pb12.into_push_pull_output(&mut gpiob.crh).downgrade().into();
		let mcp2_ss : OldOutputPin<_> = gpiob.pb11.into_push_pull_output(&mut gpiob.crh).downgrade().into();
		let sck = gpiob.pb13.into_alternate_push_pull(&mut gpiob.crh);
		let mosi = gpiob.pb15.into_alternate_push_pull(&mut gpiob.crh);
		let miso = gpiob.pb14;

		let spi = spi::Spi::spi2(dp.SPI2, (sck, miso, mosi), spi::Mode { phase : spi::Phase::CaptureOnFirstTransition, polarity : spi::Polarity::IdleLow }, 500.khz(), clocks, &mut rcc.apb1);
		//let shared_spi : MySharedSpiManager = shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi);
		//let shared_spi : &'static mut MySharedSpiManager = singleton!(:MySharedSpiManager = shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi)).unwrap();
		let shared_spi : &'static MySharedSpiManager = singleton!(:MySharedSpiManager =
			shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi)
		).unwrap();

		let mcp4822 = singleton!(:RefCell<Mcp> = RefCell::new(mcp49xx::Mcp49xx::new_mcp4822(shared_spi.acquire(), mcp_ss)) ).unwrap();
		//let mut mcp4822_2 = RefCell::new(mcp49xx::Mcp49xx::new_mcp4822(shared_spi.acquire(), mcp2_ss));

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


		writeln!(tx, "exti...");

		// EXTI
		let mut nvic = p.NVIC;
		nvic.enable(stm32::Interrupt::EXTI9_5);

		let mut exti_pin = gpiob.pb9.into_floating_input(&mut gpiob.crh);
		exti_pin.make_interrupt_source(&mut afio);
		exti_pin.trigger_on_edge(&dp.EXTI, Edge::RISING_FALLING);
		exti_pin.disable_interrupt(&dp.EXTI);

		let mut exti_pin2 = gpiob.pb8.into_floating_input(&mut gpiob.crh);
		exti_pin2.make_interrupt_source(&mut afio);
		exti_pin2.trigger_on_edge(&dp.EXTI, Edge::RISING_FALLING);
		exti_pin2.disable_interrupt(&dp.EXTI);

		let mut vco1 = vco::VoltageControlledOscillator::new(mcp4822, mcp49xx::Channel::Ch0, exti_pin.downgrade());
		let mut vco2 = vco::VoltageControlledOscillator::new(mcp4822, mcp49xx::Channel::Ch1, exti_pin2.downgrade());

		writeln!(tx, "oh god why...");
		vco1.set_pitch(42);
		//vco1.calibrate(&mut dp.EXTI, (), (), ());

		*vcos(cx.resources.vco_token) = [vco1, vco2];
		
		// Timer
		let mytimer = timer::Timer::tim2(dp.TIM2, &clocks, &mut rcc.apb1).start_raw(4800, 65535);

		
		writeln!(tx, "spawn");
		cx.spawn.xmain();

		writeln!(tx, "finish");
		return init::LateResources { exti : dp.EXTI, tx, led, usb_dev, midi, mytimer};
	}

	#[task(spawn=[not_main], resources = [mytimer, exti, vco_token, tx])]
	fn xmain(mut c : xmain::Context)
	{
		writeln!(c.resources.tx, "in main!");
		let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::Main>::new() };
		let vcos = vcos(c.resources.vco_token);
		writeln!(c.resources.tx, "got vcos");

		for vco in vcos {
			writeln!(c.resources.tx, "Calibrating VCO...");
			vco.calibrate(c.resources.exti, &mut c.resources.mytimer, &PINGPONG, &token);
		}
	}

	#[task(resources = [mytimer])]
	fn not_main(c : not_main::Context)
	{
		//let vco = vco(&c); // will not work
	}

	extern "C" {
		fn EXTI0();
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
