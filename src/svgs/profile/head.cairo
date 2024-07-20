pub mod head {
    use karst::svgs::profile::helpers::skin::SkinColors;
    pub enum HeadColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        GOLD,
    }

    pub fn get_head(head_color: HeadColors) -> ByteArray {
        match head_color {
            HeadColors::GOLD => {
                r#"<svg xmlns="http://www.w3.org/2000/svg" width="210" height="335" fill="none">
                    <path fill="url(#a)" d="svgpath"/>
                    <circle cx="4" cy="4" r="4" fill="#fff" fill-opacity=".5" transform="matrix(-1 0 0 1 199.3 126)"/>
                    <path fill="#fff" fill-opacity=".5" d="svgpath"/>
                    <path stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-width="4" d="svgpath"/>
                    <defs>
                        <radialGradient id="a" cx="0" cy="0" r="1" gradientTransform="matrix(0 128 -204 0 105 66)" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#FFDB76"/>
                            <stop offset="1" stop-color="#F8C944"/>
                        </radialGradient>
                    </defs>
                </svg>"#
            }
            _ => format!(
                r#"<svg xmlns="http://www.w3.org/2000/svg" width="210" height="335" fill="none">
                    <path fill="{}" d="svgpath"/>
                    <circle cx="4" cy="4" r="4" fill="#fff" fill-opacity=".5" transform="matrix(-1 0 0 1 199.3 126)"/>
                    <path fill="#fff" fill-opacity=".5" d="svgpath"/>
                    <path stroke="#000" stroke-linecap="square" stroke-linejoin="round" stroke-width="4" d="svgpath"/>
                </svg>"#,
                get_head_color_hex(head_color)
            ),
        }
    }

    fn get_head_color_hex(head_color: HeadColors) -> ByteArray {
        match head_color {
            HeadColors::GREEN => skin::get_skin_color(SkinColors::GREEN),
            HeadColors::PINK => skin::get_skin_color(SkinColors::PINK),
            HeadColors::PURPLE => skin::get_skin_color(SkinColors::PURPLE),
            HeadColors::BLUE => skin::get_skin_color(SkinColors::BLUE),
            HeadColors::GOLD => skin::get_skin_color(SkinColors::GOLD),
        }
    }
}
