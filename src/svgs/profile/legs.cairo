    use karst::svgs::profile::lenscolors::{LensColors};
    pub enum LegColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        DARK,
        LIGHT,
        GOLD,
    }

    pub fn get_legs(leg_color: LegColors) -> ByteArray {
        let (leg_color_hex1, leg_color_hex2) = get_leg_color_hex(leg_color);

        format!(
            r#"<svg xmlns="http://www.w3.org/2000/svg" width="210" height="335" fill="none">
                <style>
                    .legColor1 {{fill:{leg_color_hex1};}}
                    .legColor2 {{fill:{leg_color_hex2};}}
                    .legStroke {{stroke:#000;stroke-linecap:round;stroke-miterlimit:10;}}
                </style>
                <path class="legColor1" d="m72.7 249.8 16.3 5.4 16 1.3 16-1.3 16.3-5.4v30.7l-7.5 3.4-8 2.4-16.8-4.4-15.4 4.4-9.4-2.4-7.5-3.4v-30.7Z"/>
                <path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-dasharray="3.97 3.97" stroke-width="1.8" d="M79 278v-22.3M131.5 278v-22.3"/>
                <path class="legColor2" d="m73.7 276.7 15.4 4.8 15.9-4.8 15.4 4.8 15.9-4.8v5.7l-16 3.9-15.3-4.4-15.9 4.9-15.4-4.4v-5.7Z"/>
                <path class="legStroke" stroke-width="2.5" d="M74.7 281.7a24 24 0 0 0 29.8-.7"/>
                <path class="legStroke" stroke-width="3" d="M105 280.8v-16.6"/>
                <path class="legStroke" stroke-width="4" d="M74.1 250c0 10.2 0 20.4-.2 30.9m62-30.8.1 30.8"/>
                <path class="legStroke" stroke-width="3" d="M74.3 249.2a57.8 57.8 0 0 0 30.2 7.8c10.7 0 21.7-2.4 31-7.8"/>
                <path class="legStroke" stroke-width="1.8" d="M109 263s-2.4.4-4 .4-4-.4-4-.4"/>
                <path class="legStroke" stroke-width="2.5" d="M135.3 281.7a24.7 24.7 0 0 1-30.3-.7M74.7 276.4a24 24 0 0 0 29.8-.7"/>
                <path class="legStroke" stroke-width="2.5" d="M135.3 276.4a24.7 24.7 0 0 1-30.3-.7"/>
            </svg>"#
        )
    }

    fn get_leg_color_hex(leg_color: LegColors) -> (&'static str, &'static str) {
        match leg_color {
            LegColors::GREEN => (LensColors::DARK_GREEN, LensColors::LIGHT_GREEN),
            LegColors::PURPLE => (LensColors::DARK_PURPLE, LensColors::LIGHT_PURPLE),
            LegColors::BLUE => (LensColors::DARK_BLUE, LensColors::LIGHT_BLUE),
            LegColors::PINK => (LensColors::DARK_PINK, LensColors::LIGHT_PINK),
            LegColors::DARK => (LensColors::DARK, LensColors::GRAY),
            LegColors::LIGHT => (LensColors::LIGHT_GRAY, LensColors::WHITE),
            LegColors::GOLD => (LensColors::BASE_GOLD, LensColors::LIGHT_GOLD),
        }
    }

