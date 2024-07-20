pub mod headwear_earrings {
    use karst::svgs::profile::headwear::{HeadwearVariants, HeadwearColors};
    use karst::svgs::profile::lenscolors::{LensColors};

    #[derive(PartialEq)]
    pub enum EarringsColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        GOLD,
    }

    pub fn get_earrings(
        earrings_color: EarringsColors,
    ) -> (ByteArray, HeadwearVariants, HeadwearColors) {
        (
            format!(
                r#"<svg xmlns="http://www.w3.org/2000/svg" width="250" height="335" x="-1.5" fill="none">{style}{}{}"#,
                get_earrings_style(earrings_color),
                "<path class="headwearColorL" d="m26 165.5.5.9c-5 4.9-9 10-13.7 14.5L1.7 163.6l.3-.4c3.5 2 8 4.1 12 5.4 5-.7 8.2-2.2 12-3Z"/><path fill="#000" fill-opacity=".2" d="m26 165.5.5.9c-5 4.9-9 10-13.7 14.5L1.7 163.6l.3-.4c3.5 2 8 4.1 12 5.4 5-.7 8.2-2.2 12-3Z"/><path class="headwearColorL" d="M15.4 148.1c5.1 8 6.5 10.4 10.6 17.4-3.8 1-7 2.4-12 3.1a72 72 0 0 1-12-5.4c4.6-5.3 9-10.2 13.4-15Z"/><path fill="#000" d="M15.7 149.3a2.6 2.6 0 1 0 0-5.2 2.6 2.6 0 0 0 0 5.2Z"/><path class="hwStr1" stroke-width="2" d="M15.7 149.3a2.6 2.6 0 1 0 0-5.2 2.6 2.6 0 0 0 0 5.2Z"/><path class="hwStr1" stroke-width="3" d="M15.4 148.1 2 163.2l-.3.4 11 17.3c4.8-4.5 8.8-9.6 13.8-14.5l-.5-.9c-4-7-5.5-9.4-10.6-17.4Z"/><path class="hwStr1" stroke-width="2.5" d="M2 163.2c3.5 2 8 4.1 12 5.4 5-.7 8.2-2.2 12-3"/><path class="headwearColorL" d="m187.4 165.5-.5.9c5 4.9 9 10 13.7 14.5l11-17.3-.2-.4c-3.5 2-8 4.1-12.1 5.4-5-.7-8.1-2.2-12-3Z"/><path fill="#000" fill-opacity=".2" d="m187.4 165.5-.5.9c5 4.9 9 10 13.7 14.5l11-17.3-.2-.4c-3.5 2-8 4.1-12.1 5.4-5-.7-8.1-2.2-12-3Z"/><path class="headwearColorL" d="M197.9 148.1c-5 8-6.5 10.4-10.5 17.4 3.8 1 7 2.4 11.9 3.1a72 72 0 0 0 12-5.4c-4.6-5.3-9-10.2-13.4-15Z"/><path fill="#000" d="M197.7 149.3a2.6 2.6 0 1 1 0-5.2 2.6 2.6 0 0 1 0 5.2Z"/><path class="hwStr1" stroke-width="2" d="M197.7 149.3a2.6 2.6 0 1 1 0-5.2 2.6 2.6 0 0 1 0 5.2Z"/><path class="hwStr1" stroke-width="3" d="m197.9 148.1 13.5 15.1c0 .2.2.3.3.4l-11.1 17.3c-4.7-4.5-8.7-9.6-13.7-14.5l.5-.9c4-7 5.4-9.4 10.5-17.4Z"/><path class="hwStr1" stroke-width="2.5" d="M211.4 163.2c-3.5 2-8 4.1-12.1 5.4-5-.7-8.1-2.2-12-3"/></svg>"
            ),
            HeadwearVariants::EARRINGS,
            get_headwear_color(earrings_color),
        )
    }

    fn get_earrings_style(earrings_color: EarringsColors) -> ByteArray {
        format!(
            r#"<style>.headwearColorL {{ fill: {} }}.hwStr1 {{stroke: #000;stroke-linecap: round;stroke-linejoin: round;}}</style>"#,
            get_earrings_color(earrings_color)
        )
    }

    fn get_earrings_color(earrings_color: EarringsColors) -> ByteArray {
        match earrings_color {
            EarringsColors::GREEN => LensColors::LIGHT_GREEN,
            EarringsColors::PURPLE => LensColors::LIGHT_PURPLE,
            EarringsColors::BLUE => LensColors::LIGHT_BLUE,
            EarringsColors::PINK => LensColors::LIGHT_PINK,
            EarringsColors::GOLD => LensColors::LIGHT_GOLD,
        }
    }

    fn get_headwear_color(earrings_color: EarringsColors) -> HeadwearColors {
        match earrings_color {
            EarringsColors::GREEN => HeadwearColors::GREEN,
            EarringsColors::PURPLE => HeadwearColors::PURPLE,
            EarringsColors::BLUE => HeadwearColors::BLUE,
            EarringsColors::PINK => HeadwearColors::PINK,
            EarringsColors::GOLD => HeadwearColors::GOLD,
        }
    }
}