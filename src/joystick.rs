use core::marker::PhantomData;
use hal::hal::adc::{Channel, OneShot};

pub enum JoystickConfig {
    Default,
    Invert,
    InvertX,
    InvertY,
}

pub struct Joystick<ADC, X, Y>
where
    X: Channel<ADC>,
    Y: Channel<ADC>,
{
    adc: PhantomData<ADC>,
    x_pin: X,
    y_pin: Y,
    x_offset: i16,
    y_offset: i16,
    x_sign: i16,
    y_sign: i16,
}

impl<ADC, X, Y> Joystick<ADC, X, Y>
where
    X: Channel<ADC>,
    Y: Channel<ADC>,
    ADC: OneShot<ADC, u32, X>,
    ADC: OneShot<ADC, u32, Y>,
{
    pub fn new(x_pin: X, y_pin: Y, cfg: JoystickConfig, adc: &mut ADC) -> Self {
        let (x_sign, y_sign) = match cfg {
            JoystickConfig::InvertX => (-1, 1),
            JoystickConfig::InvertY => (1, -1),
            JoystickConfig::Invert => (-1, -1),
            _ => (1, 1),
        };

        let mut x_pin = x_pin;
        let x_offset = adc.read(&mut x_pin).unwrap_or(0) as i16;

        let mut y_pin = y_pin;
        let y_offset = adc.read(&mut y_pin).unwrap_or(0) as i16;

        Joystick {
            x_pin,
            y_pin,
            x_offset,
            y_offset,
            x_sign,
            y_sign,
            adc: PhantomData,
        }
    }

    pub fn read(&mut self, adc: &mut ADC) -> (f32, f32) {
        let x = adc.read(&mut self.x_pin).unwrap_or(0) as i16;
        let y = adc.read(&mut self.y_pin).unwrap_or(0) as i16;

        let x = Self::normalize((x - self.x_offset) * self.x_sign);
        let y = Self::normalize((y - self.y_offset) * self.y_sign);

        (x, y)
    }

    fn normalize(val: i16) -> f32 {
        const MAX: f32 = 2048.0;
        match val {
            x if (x.abs() < 32) => 0.0,
            x if (x.abs() < 64) => f32::from(x) / (MAX * 5.0),
            x if (x.abs() < 512) => f32::from(x) / (MAX * 3.0),
            x => f32::from(x) / MAX,
        }
    }
}
