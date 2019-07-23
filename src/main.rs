#![no_std]
#![no_main]
#![deny(warnings)]

extern crate panic_halt;
extern crate stm32g0xx_hal as hal;

mod joystick;
mod robot;
mod servo;

use core::fmt::Write;

use hal::adc::Adc;
use hal::exti::Event;
use hal::gpio::gpioa::*;
use hal::gpio::gpioc::*;
use hal::gpio::{Analog, Output, PushPull, SignalEdge};
use hal::prelude::*;
use hal::pwm::{self, Pwm};
use hal::serial::{Config, Serial};
use hal::stm32;
use hal::timer::Timer;

use joystick::{Joystick, JoystickConfig};
use robot::Robot;

type LogUart = Serial<stm32::USART1>;
type BlueLed = PC14<Output<PushPull>>;
type RedLed = PC15<Output<PushPull>>;
type Pwm1 = Pwm<stm32::TIM3, pwm::C1>;
type Pwm2 = Pwm<stm32::TIM3, pwm::C2>;
type Pwm3 = Pwm<stm32::TIM3, pwm::C3>;
type Pwm4 = Pwm<stm32::TIM3, pwm::C4>;
type JoystickA = Joystick<Adc, PA0<Analog>, PA1<Analog>>;
type JoystickB = Joystick<Adc, PA2<Analog>, PA3<Analog>>;
type RobotArm = Robot<Pwm1, Pwm2, Pwm3, Pwm4>;

#[rtfm::app(device = hal::stm32)]
const APP: () = {
    static mut ADC: Adc = ();
    static mut LOG: LogUart = ();
    static mut EXTI: stm32::EXTI = ();
    static mut BLUE_LED: BlueLed = ();
    static mut RED_LED: RedLed = ();
    static mut ROBOT: RobotArm = ();
    static mut JOYSTICK_A: JoystickA = ();
    static mut JOYSTICK_B: JoystickB = ();
    static mut INPUT_TIMER: Timer<stm32::TIM16> = ();
    static mut ANIMATION_TIMER: Timer<stm32::TIM17> = ();

    #[init]
    fn init() {
        let mut rcc = device.RCC.constrain();

        let gpioa = device.GPIOA.split(&mut rcc);
        let gpiob = device.GPIOB.split(&mut rcc);
        let gpioc = device.GPIOC.split(&mut rcc);

        gpioc
            .pc6
            .into_pull_down_input()
            .listen(SignalEdge::Falling, &mut device.EXTI);

        let mut blue_led = gpioc.pc14.into_push_pull_output();
        blue_led.set_low().unwrap();

        let (pwm1, pwm2, pwm3, pwm4) = device.TIM3.pwm(
            (gpiob.pb4, gpiob.pb5, gpiob.pb0, gpiob.pb1),
            210.hz(),
            &mut rcc,
        );

        let mut input_timer = device.TIM16.timer(&mut rcc);
        input_timer.start(100.hz());
        input_timer.listen();

        let mut animation_timer = device.TIM17.timer(&mut rcc);
        animation_timer.start(2.hz());
        animation_timer.listen();

        let usart = device
            .USART1
            .usart(gpioa.pa9, gpioa.pa10, Config::default(), &mut rcc)
            .unwrap();

        let mut adc = device.ADC.constrain(&mut rcc);

        ADC = adc;
        LOG = usart;
        EXTI = device.EXTI;
        ANIMATION_TIMER = animation_timer;
        INPUT_TIMER = input_timer;
        BLUE_LED = blue_led;
        RED_LED = gpioc.pc15.into_push_pull_output();
        ROBOT = Robot::new(pwm1, pwm2, pwm3, pwm4);
        JOYSTICK_A = Joystick::new(
            gpioa.pa0.into_analog(),
            gpioa.pa1.into_analog(),
            JoystickConfig::Invert,
            &mut adc,
        );
        JOYSTICK_B = Joystick::new(
            gpioa.pa2.into_analog(),
            gpioa.pa3.into_analog(),
            JoystickConfig::InvertY,
            &mut adc,
        );
    }

    #[interrupt(binds = TIM16, resources = [INPUT_TIMER, ADC, ROBOT, JOYSTICK_A, JOYSTICK_B])]
    fn process_input() {
        let (grip, elevation) = resources.JOYSTICK_A.read(&mut resources.ADC);
        let (azimuth, stretch) = resources.JOYSTICK_B.read(&mut resources.ADC);

        resources.ROBOT.move_by(grip, azimuth, stretch, elevation);
        resources.INPUT_TIMER.clear_irq();
    }

    #[interrupt(binds = TIM17, resources = [ANIMATION_TIMER, BLUE_LED, RED_LED])]
    fn animate_leds() {
        resources.BLUE_LED.toggle().unwrap();
        resources.RED_LED.toggle().unwrap();

        resources.ANIMATION_TIMER.clear_irq();
    }

    #[interrupt(binds = EXTI4_15, resources = [EXTI, LOG, ROBOT])]
    fn print_state() {
        writeln!(resources.LOG, "{}\r", resources.ROBOT).unwrap();

        resources.EXTI.unpend(Event::GPIO6);
    }
};
