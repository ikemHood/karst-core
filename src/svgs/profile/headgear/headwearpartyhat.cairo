
pub mod headwear_partyhat {
    use karst::svgs::profile::headwear::{HeadwearVariants, HeadwearColors};
    use karst::svgs::profile::lenscolors::{LensColors};

    #[derive(PartialEq)]
    pub enum PartyhatColors {
        GREEN,
        PURPLE,
        BLUE,
        PINK,
        GOLD,
    }

    pub fn get_partyhat(
        partyhat_color: PartyhatColors,
    ) -> (ByteArray, HeadwearVariants, HeadwearColors) {
        (
            format!(
                r#"<svg xmlns="http://www.w3.org/2000/svg" width="211" height="335" fill="none">{}</svg>"#,
                get_partyhat_style(partyhat_color),
                "<path class="partyhatColor2" d="M99.7 34.9c3.1 2 7.3 2.2 10.7.8l2.2.6 9.4 16.9c-9.2-2.3-18.4-7-24.8-14l1.7-3 .8-1.3Z"/><path fill="#fff" d="M99.7 34.9c-4-2.5-6-7.7-4.7-12.2 1.1-4.6 5.5-8.1 10.1-8.4 4.8-.2 9.4 2.8 11.1 7.2 1.7 4.4.3 9.7-3.4 12.7-.7.6-1.5 1-2.4 1.5a11.5 11.5 0 0 1-10.7-.8Z"/><path class="partyhatColor1" d="M142 90.5a108.7 108.7 0 0 1-56-31l11.2-20.2c6.4 7 15.6 11.6 24.8 13.9 6.8 12.2 13.4 24.6 20 37.3Z"/><path class="partyhatColor2" d="M73 83.3c4.3-8 8.6-16 13-23.8a108.7 108.7 0 0 0 56 31l6.3 12.2a57.5 57.5 0 0 1-21.3 10.2 95.1 95.1 0 0 1-54-29.6Z"/><path class="partyhatColor1" d="m63 102.7 10-19.4a95 95 0 0 0 54 29.6 93.5 93.5 0 0 1-21.2 1.9c-20.3 0-29.7-3-42.7-12.1Z"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="m99 36.3-1.8 3a1648.8 1648.8 0 0 0-34.1 63.4c13 9.2 22.4 12.1 42.7 12.1M142 90.5l6.3 12.2a57.5 57.5 0 0 1-21.3 10.2 93.5 93.5 0 0 1-21.2 1.9m6.8-78.5A1948.7 1948.7 0 0 1 142 90.5m-31.6-54.8c.9-.4 1.7-1 2.4-1.5 3.7-3 5.1-8.3 3.4-12.7a11.5 11.5 0 0 0-11-7.2c-4.7.3-9 3.8-10.2 8.4-1.2 4.5.8 9.7 4.7 12.2 3.1 2 7.3 2.2 10.7.8Z"/><path stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="4" d="M97.2 39.3c6.4 7 15.6 11.6 24.8 13.9m-36 6.3a108.7 108.7 0 0 0 56 31h0m-69-7.2a95 95 0 0 0 54 29.6h0"/><path fill="#fff" d="M56.4 23.6c4.6-1 8.4-4.7 9.3-9.3a18 18 0 0 0 9.8 9.9 14.5 14.5 0 0 0-9.8 10.7c-.8-5-4.5-9.6-9.3-11.3Z"/><path class="partyhatSparkles" d="M65.7 14.3c-1 4.6-4.7 8.4-9.3 9.3 4.8 1.7 8.5 6.2 9.3 11.3 1-5 5-9.3 9.8-10.7a18 18 0 0 1-9.8-9.9Z"/><path fill="#fff" d="M152.3 50.2a4 4 0 1 0 0-8 4 4 0 0 0 0 8Z"/><path class="partyhatSparkles" d="M152.3 50.2a4 4 0 1 0 0-8 4 4 0 0 0 0 8Z"/><path fill="#fff" d="M56.4 68.9a6.7 6.7 0 1 0 0-13.4 6.7 6.7 0 0 0 0 13.4Z"/><path class="partyhatSparkles" d="M56.4 68.9a6.7 6.7 0 1 0 0-13.4 6.7 6.7 0 0 0 0 13.4Z"/><path fill="#fff" d="M173.5 71.2c-.2-4.7-4-9-8.7-9.7 4.3-.3 8.1-4 8.5-8.3a11 11 0 0 0 8.7 8.3c-4.7.6-8.4 5-8.5 9.7Z"/><path class="partyhatSparkles" d="M173.3 53.2c-.4 4.3-4.2 8-8.5 8.3 4.7.7 8.5 5 8.7 9.7.1-4.7 3.8-9 8.5-9.7a11 11 0 0 1-8.7-8.3Z"/><path fill="#fff" d="M23.9 42.2a4.4 4.4 0 1 1 8.7 0 4.4 4.4 0 0 1-8.7 0Z"/><path class="partyhatSparkles" d="M23.9 42.2a4.4 4.4 0 1 1 8.7 0 4.4 4.4 0 0 1-8.7 0Z"/></svg>"

            ),
            HeadwearVariants::PARTYHAT,
            get_headwear_color(partyhat_color),
        )
    }

    fn get_partyhat_style(partyhat_color: PartyhatColors) -> ByteArray {
        let (primary_color, secondary_color) = get_partyhat_color(partyhat_color);
        let sparkles_stroke = if partyhat_color == PartyhatColors::GOLD {
            LensColors::DARK_GOLD
        } else {
            LensColors::BLACK
        };
        format!(
            r#"<style>.partyhatColor1 {{ fill:{} }} .partyhatColor2 {{ fill:{} }} .partyhatSparkles {{ stroke:{}; stroke-linecap: round; stroke-linejoin: round; stroke-width: 4 }}</style>{}"#,
            primary_color,
            secondary_color,
            sparkles_stroke,
            "svgPath" // Placeholder for the actual SVG paths
        )
    }

    fn get_partyhat_color(partyhat_color: PartyhatColors) -> (ByteArray, ByteArray) {
        match partyhat_color {
            PartyhatColors::GREEN => (LensColors::LIGHT_GREEN, LensColors::BASE_GREEN),
            PartyhatColors::PURPLE => (LensColors::LIGHT_PURPLE, LensColors::BASE_PURPLE),
            PartyhatColors::BLUE => (LensColors::LIGHT_BLUE, LensColors::BASE_BLUE),
            PartyhatColors::PINK => (LensColors::LIGHT_PINK, LensColors::BASE_PINK),
            PartyhatColors::GOLD => (LensColors::LIGHT_GOLD, LensColors::BASE_GOLD),
        }
    }

    fn get_headwear_color(partyhat_color: PartyhatColors) -> HeadwearColors {
        match partyhat_color {
            PartyhatColors::GREEN => HeadwearColors::GREEN,
            PartyhatColors::PURPLE => HeadwearColors::PURPLE,
            PartyhatColors::BLUE => HeadwearColors::BLUE,
            PartyhatColors::PINK => HeadwearColors::PINK,
            PartyhatColors::GOLD => HeadwearColors::GOLD,
        }
    }
}