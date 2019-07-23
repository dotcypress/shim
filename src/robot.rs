use core::f32::consts::PI;
use core::fmt::{Display, Formatter, Result};
use hal::hal::PwmPin;

use crate::servo::Servo;

const HOME_ANGLE: f32 = PI / 2.0;

pub struct Robot<P1, P2, P3, P4> {
    grip: Servo<P1>,
    stretch: Servo<P2>,
    azimuth: Servo<P3>,
    elevation: Servo<P4>,
}

impl<P1, P2, P3, P4> Robot<P1, P2, P3, P4>
where
    P1: PwmPin<Duty = u32>,
    P2: PwmPin<Duty = u32>,
    P3: PwmPin<Duty = u32>,
    P4: PwmPin<Duty = u32>,
{
    pub fn new(grip_ch: P1, stretch_ch: P2, azimuth_ch: P3, elevation_ch: P4) -> Self {
        let mut grip = Servo::new(grip_ch);
        let mut stretch = Servo::new(stretch_ch);
        let mut azimuth = Servo::new(azimuth_ch);
        let mut elevation = Servo::new(elevation_ch);

        grip.set_angle(HOME_ANGLE);
        azimuth.set_angle(HOME_ANGLE);
        stretch.set_angle(HOME_ANGLE);
        elevation.set_angle(HOME_ANGLE);

        Robot {
            grip,
            stretch,
            azimuth,
            elevation,
        }
    }

    pub fn move_by(&mut self, grip: f32, azimuth: f32, stretch: f32, elevation: f32) {
        const DIVIDER: f32 = 32.0;

        let current = self.grip.get_angle();
        self.grip.set_angle(current + grip / DIVIDER);

        let current = self.azimuth.get_angle();
        self.azimuth.set_angle(current + azimuth / DIVIDER);

        let current = self.stretch.get_angle();
        self.stretch.set_angle(current + stretch / DIVIDER);

        let current = self.elevation.get_angle();
        self.elevation.set_angle(current + elevation / DIVIDER);
    }
}

impl<P1, P2, P3, P4> Display for Robot<P1, P2, P3, P4>
where
    P1: PwmPin<Duty = u32>,
    P2: PwmPin<Duty = u32>,
    P3: PwmPin<Duty = u32>,
    P4: PwmPin<Duty = u32>,
{
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {
        write!(
            f,
            "RoboArm\r\n  Gripper:\t{} rad\r\n  Azimuth:\t{} rad\r\n  Stretch:\t{} rad\r\n  Elevation:\t{} rad",
            self.grip.get_angle(),
            self.azimuth.get_angle(),
            self.stretch.get_angle(),
            self.elevation.get_angle()
        )
    }
}
