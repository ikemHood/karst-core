mod helpers{
    
    pub enum ComponentBytes {
        BACKGROUND,
        SKIN,
        FACE,
        HEAD,
        BODY,
        HANDS,
        LEGS,
        SHOES,
        LOGO,
        HEADWEAR,
    }

        pub fn byte_index(component: ComponentBytes) -> u8 {
            match component {
                ComponentBytes::BACKGROUND => 0,
                ComponentBytes::SKIN => 1,
                ComponentBytes::FACE => 2,
                ComponentBytes::HEAD => 3,
                ComponentBytes::BODY => 4,
                ComponentBytes::HANDS => 5,
                ComponentBytes::LEGS => 6,
                ComponentBytes::SHOES => 7,
                ComponentBytes::LOGO => 8,
                ComponentBytes::HEADWEAR => 9,
            }
        }
    }

    pub fn get_variant(seed: u64, component_byte: ComponentBytes) -> u8 {
        ((seed >> (component_byte.byte_index() * 8)) & 0xFF) as u8
    }

    pub fn get_color(seed: u64, component_byte: ComponentBytes) -> u8 {
        ((seed >> ((31 - component_byte.byte_index()) * 8)) & 0xFF) as u8
    }
    
    mod background{
    pub enum BackgroundColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        GOLD,
    }

        pub fn get_background_color(color : BackgroundColors) -> felt252{
            match color {
                BackgroundColors::GREEN => "#green",
                BackgroundColors::PINK => "#pink",
                BackgroundColors::PURPLE => "#purple",
                BackgroundColors::BLUE => "#blue",
                BackgroundColors::GOLD => "#yellow",
            }
        }
    
    }
    mod skin{
        use karst::svgs::profile::lenscolors::{LensColors};
    pub enum SkinColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        GOLD,
    }
        pub fn get_skin_color(color : SkinColors) -> felt252{
            match color {
                SkinColors::GREEN =>LensColors::BASE_GREEN,
                SkinColors::PINK => LensColors::BASE_PINK,
                SkinColors::PURPLE =>LensColors::BASE_PURPLE,
                SkinColors::BLUE =>LensColors::BASE_BLUE,
                SkinColors::GOLD =>LensColors::BASE_GOLD,
            }
        }
    

    pub fn get_gold_sparkles() -> felt252{
        r#"<svg xmlns="http://www.w3.org/2000/svg" width="210" height="335" fill="none"><path fill="#fff" stroke="#B96326" stroke-linecap="square" stroke-linejoin="round" stroke-width="3.5" d="M13.3 89c.1-.3.5-.3.6 0 2 5.5 6 10 11.3 11.9v.1l-.5.2c-5 1.8-8.9 6-10.6 11.3v.1c-.1.2-.5.2-.5 0v0a19 19 0 0 0-11.4-12.1v0-.2h.3c5-1.8 9-6 10.8-11.4v0Z"/><path fill="#fff" stroke="#B96326" stroke-linecap="square" stroke-linejoin="round" stroke-width="3" d="M19.6 120.5c0-.2.3-.2.4 0a12 12 0 0 0 7 7.5v0c.1 0 .1.1 0 .1l-.3.1a11.1 11.1 0 0 0-6.7 7.2h0c0 .2-.2.2-.3 0v0a12.1 12.1 0 0 0-7.1-7.6v0-.1l.1-.1a11 11 0 0 0 6.9-7.1v0Z"/></svg>"#
    }
}