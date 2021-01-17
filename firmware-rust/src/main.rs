#![no_std]
#![no_main]

extern crate panic_semihosting;

mod envelope;
mod reverse_bits;
mod bu2505fv;

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

type VcoType = vco::VoltageControlledOscillator<'static, Mcp>;

pub struct SpiDevices {
	vcos : [VcoType; 2],
	envelope : envelope::Envelope,
	bu2505 : bu2505fv::Bu2505fv<MySharedSpiProxy, Pxx<Output<PushPull>>, bu2505fv::Reversed>,
	spi_accessor : MySharedSpiProxy
}

static mut SPI_DEVICES : MaybeUninit<SpiDevices> = MaybeUninit::uninit();

mod vco_token { // TODO FIXME rename this
	use crate::{SpiDevices, SPI_DEVICES};
	pub struct VcoToken { dummy : () }
	impl VcoToken {
		pub const unsafe fn new() -> VcoToken { VcoToken{dummy:()} }
	}
	pub fn vcos<'a>(token : &'a mut VcoToken) -> &'a mut SpiDevices {
		unsafe { &mut *SPI_DEVICES.as_mut_ptr() }
	}
}

use crate::vco_token::{VcoToken,vcos};

#[derive(Debug)]
enum Command {
	Calibrate,
	Midi(midi::MidiChannelMessage)
}

use stm32f1xx_hal::time::Hertz;
const SYSCLK : Hertz = Hertz(72_000_000);

#[app(device = stm32)]
const APP: () = {
	struct Resources {
		// TODO
		#[init(())]
		dummy : (),
		exti : stm32::EXTI,
		#[init(core::ptr::null_mut())]
		exti_pin_ptr : *mut Pxx<Input<Floating>>,
		tx : serial::Tx<stm32::USART1>,
		led : gpioc::PC13<Output<PushPull>>,
		usb_dev : usb_device::device::UsbDevice<'static, MyUsbBus>,
		midi : usbd_midi::MidiClass<'static, MyUsbBus>,
		mytimer : timer::CountDownTimer<stm32::TIM2>,
		env_timer : timer::CountDownTimer<stm32::TIM1>,
		#[init(false)]
		calibration_in_progress : bool,
		#[init(envelope::Envelope::new())]
		test_env1 : envelope::Envelope,
		test_env2 : envelope::Envelope,
		test_lfo1 : envelope::Envelope,
		test_lfo2 : envelope::Envelope,
		#[init( unsafe{VcoToken::new()} )]
		vco_token : VcoToken
	}

	//#[init(resources=[vco_token])]
	#[init(spawn=[xmain],resources=[vco_token])]
	fn init(mut cx : init::Context) -> init::LateResources {
		static mut USB_BUS: Option<usb_device::bus::UsbBusAllocator<MyUsbBus>> = None;

		let dp = stm32::Peripherals::take().unwrap();
		let p = &mut cx.core; //cortex_m::peripheral::Peripherals::take().unwrap();


		// Clock configuration

		let mut flash = dp.FLASH.constrain();
		let mut rcc = dp.RCC.constrain();

		let clocks = rcc.cfgr
			.use_hse(8.mhz())
			.sysclk(SYSCLK)
			.pclk1(36.mhz())
			.freeze(&mut flash.acr);

		assert!(clocks.usbclk_valid());


		// GPIO and peripheral configuration

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
		writeln!(tx, "========================================================").ok();
		writeln!(tx, "analog-synth @ {}", env!("VERGEN_SHA")).ok();
		writeln!(tx, "      built on {}", env!("VERGEN_BUILD_TIMESTAMP")).ok();
		writeln!(tx, "========================================================\n").ok();
		
		// Configure USB
		// BluePill board has a pull-up resistor on the D+ line.
		// Pull the D+ pin down to send a RESET condition to the USB bus.
		let mut usb_dp = gpioa.pa12.into_push_pull_output(&mut gpioa.crh);
		usb_dp.set_low().ok();
		delay(clocks.sysclk().0 / 100);
		
		let usb_dm = gpioa.pa11;
		let usb_dp = usb_dp.into_floating_input(&mut gpioa.crh);

		*USB_BUS = Some( UsbBus::new(dp.USB, (usb_dm, usb_dp)) );
		let usb_bus = USB_BUS.as_ref().unwrap();

		let mut midi = usbd_midi::MidiClass::new(usb_bus);
		let mut usb_dev = UsbDeviceBuilder::new(usb_bus, UsbVidPid(0x16c0, 0x27dd))
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

		let spi = spi::Spi::spi2(dp.SPI2, (sck, miso, mosi), spi::Mode { phase : spi::Phase::CaptureOnFirstTransition, polarity : spi::Polarity::IdleLow }, 5.mhz(), clocks, &mut rcc.apb1);
		let shared_spi : &'static MySharedSpiManager = singleton!(:MySharedSpiManager =
			shared_bus::BusManager::<noop_bus_mutex::NoopBusMutex<_>, _>::new(spi)
		).unwrap();

		let mcp4822 = singleton!(:RefCell<Mcp> = RefCell::new(mcp49xx::Mcp49xx::new_mcp4822(shared_spi.acquire(), mcp_ss)) ).unwrap();


		let bu2505_ld_pin = gpiob.pb10.into_push_pull_output(&mut gpiob.crh).downgrade();
		let mut spi_bla = shared_spi.acquire();
		let mut bu2505 = bu2505fv::create_reversed(bu2505_ld_pin, &spi_bla);

		writeln!(tx, "exti...");

		// EXTI
		p.NVIC.enable(stm32::Interrupt::EXTI9_5);

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
		
		*vcos(cx.resources.vco_token) = SpiDevices{ vcos : [vco1, vco2], envelope : envelope::Envelope::new(), bu2505, spi_accessor : spi_bla };
		
		// Timer
		let mytimer = timer::Timer::tim2(dp.TIM2, &clocks, &mut rcc.apb1).start_raw(4800, 65535);

		// Periodic timer
		let mut env_timer = timer::Timer::tim1(dp.TIM1, &clocks, &mut rcc.apb2).start_count_down(1000.hz());
		env_timer.listen(timer::Event::Update);

		// USB interrupt
		p.NVIC.enable(stm32::Interrupt::USB_LP_CAN_RX0);

		// Envelope/LFO
		let mut test_lfo1 = envelope::Envelope::new();
		test_lfo1.repeat = true;
		test_lfo1.attack = 600;
		test_lfo1.decay = 1;
		test_lfo1.sustain = 65535;
		test_lfo1.release = 600;
		test_lfo1.hold = false;
		test_lfo1.trigger();

		let mut test_lfo2 = test_lfo1;
		test_lfo2.attack = 300;
		test_lfo2.release = 300;

		let mut test_env2 = envelope::Envelope::new();
		test_env2.attack = 200;
		test_env2.release /= 2;

		cx.spawn.xmain(Command::Calibrate);
		return init::LateResources { exti : dp.EXTI, tx, led, usb_dev, midi, mytimer, env_timer, test_env2, test_lfo1, test_lfo2};
	}

	#[task(resources = [mytimer, exti, exti_pin_ptr, vco_token, tx, test_env1, test_env2, test_lfo1, test_lfo2, calibration_in_progress], capacity=10, priority=1)]
	fn xmain(mut c : xmain::Context, cmd : Command)
	{
		writeln!(c.resources.tx, "in main, cmd = {:?}", cmd);
		let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::Main>::new() };
		let spi_devices = vcos(c.resources.vco_token);
		writeln!(c.resources.tx, "got vcos");

		match cmd {
			Command::Calibrate => {
				for vco in &mut spi_devices.vcos {
					writeln!(c.resources.tx, "Calibrating VCO...");
					writeln!(c.resources.tx, "timer clock is {}", c.resources.mytimer.lock(|t| {t.clk()}));
					writeln!(c.resources.tx, "lo");
					vco.send(1024);
					delay(12000000);
					writeln!(c.resources.tx, "hi");
					vco.send(1024*2);
					delay(12000000);
					let freq = vco.measure_freq_at(2048, 10, &mut c.resources.exti, &mut c.resources.exti_pin_ptr, &mut c.resources.mytimer, &PINGPONG, &token);
					writeln!(c.resources.tx, "frequency is {}", freq as u32);
					let freq = vco.measure_freq_at(512, 10, &mut c.resources.exti, &mut c.resources.exti_pin_ptr, &mut c.resources.mytimer, &PINGPONG, &token);
					writeln!(c.resources.tx, "frequency is {}", freq as u32);
					vco.calibrate(&mut c.resources.exti, &mut c.resources.exti_pin_ptr, &mut c.resources.mytimer, &PINGPONG, &token, &mut c.resources.tx);
					c.resources.calibration_in_progress.lock(|c| {*c = false;});
				}
			}
			Command::Midi(msg) => {
				match msg {
					midi::MidiChannelMessage::NoteOn{note, velocity: _} => {
						let mc = note as i32 * 100_000 + 5_000_000;
						writeln!(c.resources.tx, "playing millicents={}", mc);
						let result = spi_devices.vcos[0].output_millicents( mc );
						writeln!(c.resources.tx, "\t-> {:?}", result);
						let result2= spi_devices.vcos[1].output_millicents( mc + 700_000 );
						writeln!(c.resources.tx, "\t-> {:?}", result2);
						
						c.resources.test_env1.trigger();
						c.resources.test_env2.trigger();
					}
					midi::MidiChannelMessage::NoteOff{note:_, velocity:_} => {
						c.resources.test_env1.release();
						c.resources.test_env2.release();
					}
					_ => {}
				}
			}

		}
	}
	
	#[task(binds = TIM1_UP, resources=[test_env1, test_env2, test_lfo1, test_lfo2, tx, env_timer, vco_token], priority=1)]
	fn envelope_timer(mut c : envelope_timer::Context)
	{
		static mut i : u32 = 0;
		let spi_devices = vcos(c.resources.vco_token);

		*i = (*i+1)%10000;
		if *i == 0 {
			writeln!(c.resources.tx, "envelope update: {}", c.resources.test_env.value10bit());
		}
		spi_devices.bu2505.set(1, c.resources.test_env1.value10bit(), &mut spi_devices.spi_accessor, SYSCLK.0);
		c.resources.test_env1.tick();
		spi_devices.bu2505.set(2, c.resources.test_env2.value10bit(), &mut spi_devices.spi_accessor, SYSCLK.0);
		c.resources.test_env2.tick();
		spi_devices.bu2505.set(9, c.resources.test_lfo1.value10bit(), &mut spi_devices.spi_accessor, SYSCLK.0);
		c.resources.test_lfo1.tick();
		spi_devices.bu2505.set(10, c.resources.test_lfo2.value10bit(), &mut spi_devices.spi_accessor, SYSCLK.0);
		c.resources.test_lfo2.tick();
		c.resources.env_timer.clear_update_interrupt_flag();
	}

	#[task(binds = USB_LP_CAN_RX0, spawn=[xmain], resources=[midi, usb_dev, led, calibration_in_progress], priority=2)]
	fn periodic_usb_poll(mut c : periodic_usb_poll::Context)
	{
		if c.resources.usb_dev.poll(&mut [c.resources.midi]) {

			//midi.note_on(1, usbd_midi::Note::A4, 127).ok();

			let mut data : [u8;64] = [0;64];
			if let Ok(size) = c.resources.midi.poll(&mut data)
			{
				for i in (0..size).step_by(4) {
					let (cable, msg) = midi::parse_midi(&[data[i],data[i+1],data[i+2],data[i+3]]);//FIXME there must be a better way...
					match msg {
						midi::MidiMessage::Channel(channel, msg) =>
						{
							match msg {
								midi::MidiChannelMessage::NoteOn{note:_, velocity:_} => {
									c.resources.led.set_low().ok(); // Turn off
									c.spawn.xmain(Command::Midi(msg));
								}
								midi::MidiChannelMessage::NoteOff{note:_, velocity:_} => {
									c.resources.led.set_high().ok(); // Turn off
									c.spawn.xmain(Command::Midi(msg));
								}
								midi::MidiChannelMessage::ControlChange{ctrl, value} => {
									if ctrl == 92 && *c.resources.calibration_in_progress == false {
										*c.resources.calibration_in_progress = true;
										c.spawn.xmain(Command::Calibrate);
									}
									c.spawn.xmain(Command::Midi(msg));
								}
								_ => ()
							}
						}
						_ => ()
					}
				}

			}

		}
	}

	#[task(binds = EXTI9_5, resources = [mytimer, exti, exti_pin_ptr], priority=3)]
	fn measurement_isr(c : measurement_isr::Context)
	{
		let token = unsafe{ coop_threadsafe_container::Token::<coop_threadsafe_container::ISR>::new() };
		let exti_pin = unsafe {&mut **c.resources.exti_pin_ptr};

		vco::handle_measurement_isr(&token, exti_pin, c.resources.exti, c.resources.mytimer, &PINGPONG);
	}

	extern "C" {
		fn EXTI0();
	}
};
