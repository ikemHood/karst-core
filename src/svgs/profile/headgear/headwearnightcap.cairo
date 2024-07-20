pub mod headwear_nightcap {
    use karst::svgs::profile::headwear::{HeadwearVariants, HeadwearColors};
    use karst::svgs::profile::lenscolors::{LensColors};

    #[derive(PartialEq)]
    pub enum NightcapColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        GOLD,
    }

    pub fn get_nightcap(
        nightcap_color: NightcapColors,
    ) -> (ByteArray, HeadwearVariants, HeadwearColors) {
        (
            format!(
                r#"<svg xmlns="http://www.w3.org/2000/svg" width="210" height="335" fill="none">{}</svg>"#,
                get_nightcap_style(nightcap_color),
                "<path class="nightcapColor1" d="M160.4 111c-3-.2-6.1.8-8.6 2.6a94.6 94.6 0 0 0-11.1-19.8 75.2 75.2 0 0 1-72-.5c0-9 .3-19 4.6-27A40.6 40.6 0 0 1 99.9 48a48.4 48.4 0 0 1 35 3.7 47.5 47.5 0 0 1 20.5 26 122 122 0 0 1 5.2 33.4h-.2Z"/><path fill="#fff" d="M160.6 111c5.6.3 10.9 4.4 12.3 9.7 1.5 5.3-.9 11.4-5.6 14.5-4.8 3-11.5 2.7-16-.8a13.3 13.3 0 0 1-4.1-15 13.9 13.9 0 0 1 13.3-8.5Zm-92-17.7a75.2 75.2 0 0 0 72 .5c2.4 3.3 4.6 6.7 6.6 10.3a95 95 0 0 1-41.8 10.6c-14 .1-28-3.2-40-10-1.1-4-.4-8.2 2.3-11.9l1 .5Z"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M147.2 104s0 0 0 0a95 95 0 0 1-41.8 10.7c-14 .1-28-3.2-40-10-1.1-4-.4-8.2 2.3-11.9l1 .5a75.2 75.2 0 0 0 72 .5"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M131.3 82.7a104.3 104.3 0 0 1 20.5 31"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M68.6 93.4v0c.2-9 .4-19 4.7-27a40.6 40.6 0 0 1 26.6-18.5 48.4 48.4 0 0 1 35 3.7 47.5 47.5 0 0 1 20.5 26 122 122 0 0 1 5.2 33.4c5.6.3 10.9 4.4 12.3 9.7 1.5 5.3-.9 11.4-5.6 14.5-4.8 3-11.5 2.7-16-.8a13.3 13.3 0 0 1-4.1-15 13.9 13.9 0 0 1 13.3-8.5"/><path fill="#fff" d="M90 59.2a4 4 0 1 1 0 8 4 4 0 0 1 0-8Z"/><path fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M86 63.2a4 4 0 1 1 8.1 0 4 4 0 0 1-8 0Z"/><path fill="#fff" d="M73 82.7a3.4 3.4 0 1 1 0 6.8 3.4 3.4 0 0 1 0-6.8Z"/><path fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M69.6 86a3.4 3.4 0 1 1 6.8 0 3.4 3.4 0 0 1-6.8 0Z"/><path fill="#fff" d="M146.3 81a2.4 2.4 0 1 1 0 4.7 2.4 2.4 0 0 1 0-4.8Z"/><path fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M144 83.3a2.4 2.4 0 1 1 4.7 0 2.4 2.4 0 0 1-4.8 0Z"/><path fill="#fff" d="M105.7 47.4c1.7-.2 3.3.8 3.5 2.4.2 1.5-1 3-2.8 3.2-1.8.2-3.4-.9-3.5-2.4-.2-1.6 1-3 2.8-3.2Z"/><path fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M102.9 50.6c-.2-1.6 1-3 2.8-3.2 1.7-.2 3.3.8 3.5 2.4.2 1.5-1 3-2.8 3.2-1.8.2-3.4-.9-3.5-2.4Z"/><path fill="#fff" stroke="#000" stroke-linecap="round" stroke-width="3" d="M113.7 58.3c.9-.3 1.5.9 1 1.7a8.4 8.4 0 0 0-.3 7 8.3 8.3 0 0 0 11.5 4.2c.9-.4 2 .2 1.7 1a11 11 0 1 1-14-14ZM90.6 86h0Zm0 0h0m0 0h0m0 0h0Zm10.2-2h0a6.6 6.6 0 0 1-4.3-3.8c-.6-1.4-2.7-1.4-3 .2h0a6 6 0 0 1-3.4 4.2h0c-1.4.6-1.2 2.5.1 2.9h0c1.9.5 3.5 1.9 4.3 3.8h0a1.6 1.6 0 0 0 3-.2h0a6 6 0 0 1 3.3-4.2h0l.2-.1a1.5 1.5 0 0 0-.2-2.9ZM136 58.3h0c-.7-.2-1.4-.6-1.8-1.4-.6-1.3-2.7-1.1-3 .4h0a2 2 0 0 1-1 1.8h0c-1.2.7-1 2.5.4 2.8h0c.6.1 1.3.6 1.7 1.4h0c.7 1.4 2.7 1 3-.5 0 0 0 0 0 0h0a2 2 0 0 1 1-1.7h0c1.3-.7 1-2.5-.3-2.8Zm-9.2 36.2h0c-1-.6-1.8-1.7-2-3.2-.3-1.4-2.3-1.9-3-.5h0c-.7 1.3-1.7 2-2.7 2.3h-.1l.3 1.4-.3-1.4c-1.4.2-1.7 2-.5 2.8h0c1 .6 1.8 1.7 2 3.2h0a1.6 1.6 0 0 0 3 .4h0a4 4 0 0 1 2.6-2.2h.2c1.4-.3 1.7-2 .5-2.8Z"/></svg>"
            ),
            HeadwearVariants::NIGHTCAP,
            get_headwear_color(nightcap_color),
        )
    }

    fn get_nightcap_style(nightcap_color: NightcapColors) -> ByteArray {
        format!(
            r#"<style>.nightcapColor1 {{ fill:{} }}</style>{}"#,
            get_nightcap_color(nightcap_color),
            "svgPath" // Placeholder for the actual SVG paths
        )
    }

    fn get_nightcap_color(nightcap_color: NightcapColors) -> ByteArray {
        match nightcap_color {
            NightcapColors::GREEN => LensColors::LIGHT_GREEN,
            NightcapColors::PINK => LensColors::LIGHT_PINK,
            NightcapColors::PURPLE => LensColors::LIGHT_PURPLE,
            NightcapColors::BLUE => LensColors::LIGHT_BLUE,
            NightcapColors::GOLD => LensColors::LIGHT_GOLD,
        }
    }

    fn get_headwear_color(nightcap_color: NightcapColors) -> HeadwearColors {
        match nightcap_color {
            NightcapColors::GREEN => HeadwearColors::GREEN,
            NightcapColors::PINK => HeadwearColors::PINK,
            NightcapColors::PURPLE => HeadwearColors::PURPLE,
            NightcapColors::BLUE => HeadwearColors::BLUE,
            NightcapColors::GOLD => HeadwearColors::GOLD,
        }
    }
}