use core::f32::consts::PI;
use hal::hal::PwmPin;

pub struct Servo<P> {
    angle: f32,
    zero_duty: f32,
    pwm: P,
}

impl<P> Servo<P>
where
    P: PwmPin<Duty = u32>,
{
    pub fn new(pwm: P) -> Self {
        let mut pwm = pwm;
        let zero_duty = pwm.get_max_duty() as f32 / 10.0;
        pwm.set_duty(0);
        pwm.enable();
        Servo {
            pwm,
            zero_duty,
            angle: 0.0,
        }
    }

    pub fn get_angle(&self) -> f32 {
        self.angle
    }

    pub fn set_angle(&mut self, angle: f32) {
        self.angle = match angle {
            x if (x < 0.0) => 0.0,
            x if (x > PI) => PI,
            x => x,
        };
        let duty = self.zero_duty + self.zero_duty * self.angle * 4.0 / PI;
        self.pwm.set_duty(duty as u32);
    }
}
