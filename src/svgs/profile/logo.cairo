    mod karst::svgs::profile::lenscolors::{LensColors};
    mod karst::svgs::profile::body;
    pub enum LogoVariants {
        NONE,
        HAPPY,
        HEART,
        LENS,
        PEACE,
    }

    pub enum LogoColors {
        GREEN,
        PINK,
        PURPLE,
        BLUE,
        LIGHT,
        GOLD,
        NONE,
    }

    pub fn get_logo(
        logo_variant: LogoVariants,
        logo_color: LogoColors,
        body_variant: body::BodyVariants,
        body_color: body::BodyColors,
    ) -> ByteArray {
        match logo_variant {
            LogoVariants::NONE => ByteArray::new(),
            _ => {
                let mut logo_color = logo_color;

                if body_color != body::BodyColors::LIGHT && body_color != body::BodyColors::DARK {
                    if logo_color == LogoColors::LIGHT {
                        logo_color = LogoColors::BLUE;
                    }
                }

                match body_variant {
                    body::BodyVariants::HOODIE => get_logo_hoodie(logo_variant, logo_color),
                    body::BodyVariants::TANKTOP | body::BodyVariants::TSHIRT => get_logo_tshirt_tanktop(logo_variant, logo_color),
                    body::BodyVariants::JACKET => get_logo_jacket(logo_variant, logo_color),
                    body::BodyVariants::SHIBUYA => ByteArray::new(), // No logo for Shibuya
                    _ => panic!("Unhandled body variant"), // Avoid warnings.
                }
            }
        }
    }

    fn get_logo_hoodie(logo_variant: LogoVariants, logo_color: LogoColors) -> ByteArray {
        match logo_variant {
            LogoVariants::HAPPY => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><circle cx=\"105\" cy=\"210.176\" r=\"6\" fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\"/><circle cx=\"102.75\" cy=\"209.426\" r=\".75\" fill=\"#000\"/><circle cx=\"107.25\" cy=\"209.426\" r=\".75\" fill=\"#000\"/><path stroke=\"#000\" stroke-linecap=\"round\" stroke-width=\"1.5\" d=\"M102.8 211.7s.7 1.1 2.2 1.1 2.3-1.1 2.3-1.1\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752"/><circle cx="102.75" cy="209.426" r=".75" fill="#000"/><circle cx="107.25" cy="209.426" r=".75" fill="#000"/><path stroke="#000" stroke-linecap="round" stroke-width="1.5" d="M102.8 211.7s.7 1.1 2.2 1.1 2.3-1.1 2.3-1.1"/></svg>'
            ),
            LogoVariants::HEART => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><path fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\" d=\"M105.6 206c5.4-5.5 12.8 1 7.5 6.9-2 2.3-5.2 3.6-8.3 3.6a11 11 0 0 1-8.2-3.6c-5-6 2.5-12.4 7.8-6.8.4.5.7.5 1.2 0Z\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752" d="M105.6 206c5.4-5.5 12.8 1 7.5 6.9-2 2.3-5.2 3.6-8.3 3.6a11 11 0 0 1-8.2-3.6c-5-6 2.5-12.4 7.8-6.8.4.5.7.5 1.2 0Z"/></svg>'
            ),
            LogoVariants::LENS => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><path fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\" d=\"m108.8 207.7-.3.2v-.6c0-4.5-7-4.5-7 0v.6l-.3-.2a8.5 8.5 0 0 0-.2-.2c-3.3-3.1-8.1 1.7-5 5l.2.2c3.8 3.7 8.8 3.7 8.8 3.7s5 0 8.8-3.7l.2-.2c3.1-3.3-1.7-8.1-5-5l-.2.2Z\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752" d="m108.8 207.7-.3.2v-.6c0-4.5-7-4.5-7 0v.6l-.3-.2a8.5 8.5 0 0 0-.2-.2c-3.3-3.1-8.1 1.7-5 5l.2.2c3.8 3.7 8.8 3.7 8.8 3.7s5 0 8.8-3.7l.2-.2c3.1-3.3-1.7-8.1-5-5l-.2.2Z"/></svg>'
            ),
            LogoVariants::PEACE => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><circle cx=\"105\" cy=\"210.176\" r=\"6\" fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\"/><path stroke=\"#000\" stroke-width=\"1.5\" d=\"M105 204.2v12m0-4.9-4.5 2.6m4.5-2.6 4.5 2.6\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752"/><path stroke="#000" stroke-width="1.5" d="M105 204.2v12m0-4.9-4.5 2.6m4.5-2.6 4.5 2.6"/></svg>'
            ),
            _ => panic!("Unhandled logo variant"), // Avoid warnings.
        }
    }

    fn get_logo_tshirt_tanktop(logo_variant: LogoVariants, logo_color: LogoColors) -> ByteArray {
        match logo_variant {
            LogoVariants::HAPPY => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><circle cx=\"105\" cy=\"227.19\" r=\"8\" fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\"/><circle cx=\"102\" cy=\"226.19\" r=\"1\" fill=\"#000\"/><circle cx=\"108\" cy=\"226.19\" r=\"1\" fill=\"#000\"/><path stroke=\"#000\" stroke-linecap=\"round\" stroke-width=\"1.5\" d=\"M102 229.2s1 1.5 3 1.5 3-1.5 3-1.5\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752"/><circle cx="102" cy="226.19" r="1" fill="#000"/><circle cx="108" cy="226.19" r="1" fill="#000"/><path stroke="#000" stroke-linecap="round" stroke-width="1.5" d="M102 229.2s1 1.5 3 1.5 3-1.5 3-1.5"/></svg>'
            ),
            LogoVariants::HEART => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><path fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\" d=\"M105.8 222.2c6.5-6.7 15.4 1 9 8.1a13.6 13.6 0 0 1-10 4.5c-3.7-.1-7.4-1.6-9.8-4.5-6-7 3-14.8 9.4-8 .5.5.8.5 1.4 0Z\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752" d="M105.8 222.2c6.5-6.7 15.4 1 9 8.1a13.6 13.6 0 0 1-10 4.5c-3.7-.1-7.4-1.6-9.8-4.5-6-7 3-14.8 9.4-8 .5.5.8.5 1.4 0Z"/></svg>'
            ),
            LogoVariants::LENS => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><path fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\" d=\"m109.5 223.7-.3.3v-.8c-.1-5.4-8.3-5.4-8.4 0v.8l-.3-.3a10.6 10.6 0 0 0-.3-.2c-4-3.7-9.7 2-6 6l.3.2c4.5 4.5 10.5 4.5 10.5 4.5s6 0 10.5-4.5l.3-.3c3.7-3.9-2-9.6-6-6l-.3.3Z\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752" d="m109.5 223.7-.3.3v-.8c-.1-5.4-8.3-5.4-8.4 0v.8l-.3-.3a10.6 10.6 0 0 0-.3-.2c-4-3.7-9.7 2-6 6l.3.2c4.5 4.5 10.5 4.5 10.5 4.5s6 0 10.5-4.5l.3-.3c3.7-3.9-2-9.6-6-6l-.3.3Z"/></svg>'
            ),
            LogoVariants::PEACE => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><circle cx=\"105\" cy=\"227.19\" r=\"8\" fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\"/><path stroke=\"#000\" stroke-width=\"1.5\" d=\"M105 219.2v16m0-6.5-6 3.5m6-3.5 6 3.5\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752"/><path stroke="#000" stroke-width="1.5" d="M105 219.2v16m0-6.5-6 3.5m6-3.5 6 3.5"/></svg>'
            ),
            _ => panic!("Unhandled logo variant"), // Avoid warnings.
        }
    }

    fn get_logo_jacket(logo_variant: LogoVariants, logo_color: LogoColors) -> ByteArray {
        match logo_variant {
            LogoVariants::HAPPY => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><circle cx=\"127.993\" cy=\"211.494\" r=\"5\" fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\"/><circle cx=\"126.493\" cy=\"210.994\" r=\".5\" fill=\"#000\"/><circle cx=\"129.493\" cy=\"210.994\" r=\".5\" fill=\"#000\"/><path stroke=\"#000\" stroke-linecap=\"round\" stroke-width=\".75\" d=\"M126.5 212.5s.5.7 1.5.7 1.5-.7 1.5-.7\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752"/><circle cx="126.493" cy="210.994" r=".5" fill="#000"/><circle cx="129.493" cy="210.994" r=".5" fill="#000"/><path stroke="#000" stroke-linecap="round" stroke-width=".75" d="M126.5 212.5s.5.7 1.5.7 1.5-.7 1.5-.7"/></svg>'
            ),
            LogoVariants::HEART => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><path fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\" d=\"M128.5 208c4.4-4.6 10.5.8 6.2 5.7a9 9 0 0 1-6.9 3 9 9 0 0 1-6.7-3c-4.2-4.9 2-10.3 6.4-5.6.4.4.6.4 1 0Z\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752" d="M128.5 208c4.4-4.6 10.5.8 6.2 5.7a9 9 0 0 1-6.9 3 9 9 0 0 1-6.7-3c-4.2-4.9 2-10.3 6.4-5.6.4.4.6.4 1 0Z"/></svg>'
            ),
            LogoVariants::LENS => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><path fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\" d=\"M131 209.1v.2-.5c-.2-3.7-5.8-3.7-6 0v.5l-.1-.2-.2-.2c-2.7-2.5-6.7 1.4-4.1 4.1l.2.2c3 3.1 7.2 3.1 7.2 3.1s4.1 0 7.2-3l.2-.3c2.6-2.7-1.4-6.6-4.1-4l-.2.1Z\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752" d="M131 209.1v.2-.5c-.2-3.7-5.8-3.7-6 0v.5l-.1-.2-.2-.2c-2.7-2.5-6.7 1.4-4.1 4.1l.2.2c3 3.1 7.2 3.1 7.2 3.1s4.1 0 7.2-3l.2-.3c2.6-2.7-1.4-6.6-4.1-4l-.2.1Z"/></svg>'
            ),
            LogoVariants::PEACE => format!(
                "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\"><circle cx=\"127.993\" cy=\"211.494\" r=\"5\" fill=\"{}\" stroke=\"#000\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.752\"/><path fill=\"#000\" fill-rule=\"evenodd\" d=\"M127.5 212.2v-5.7h1v5.7l3.5 2-.5.8-3-1.8v3.3h-1v-3.3l-3 1.8-.5-.8 3.5-2Z\" clip-rule=\"evenodd\"/></svg>",
                get_logo_color(logo_color),
                '" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.752"/><path fill="#000" fill-rule="evenodd" d="M127.5 212.2v-5.7h1v5.7l3.5 2-.5.8-3-1.8v3.3h-1v-3.3l-3 1.8-.5-.8 3.5-2Z" clip-rule="evenodd"/></svg>'
            ),
            _ => panic!("Unhandled logo variant"), // Avoid warnings.
        }
    }

    fn get_logo_color(logo_color: LogoColors) -> felt252{
        match logo_color {
            LogoColors::GREEN => LensColors::BASE_GREEN,
            LogoColors::PINK => LensColors::BASE_PINK,
            LogoColors::PURPLE => LensColors::BASE_PURPLE,
            LogoColors::BLUE => LensColors::BASE_BLUE,
            LogoColors::LIGHT => LensColors::LIGHT_GRAY,
            LogoColors::GOLD => LensColors::BASE_GOLD,
            _ => panic!("Unhandled logo color"), // Avoid warnings.
        }
    }
