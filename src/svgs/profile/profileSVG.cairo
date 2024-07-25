    use karst::svgs::profile::helpers::{ComponentBytes, skin::SkinColors, get_variant, get_color,background::BackgroundColors};
    use karst::svgs::profile::body::{BodyVariants, BodyColors};
    use karst::svgs::profile::face::FaceVariants;
    use karst::svgs::profile::hands::{HandsVariants, HandsColors};
    use karst::svgs::profile::head::{HeadColors};
    use karst::svgs::profile::headwear::{HeadwearVariants, HeadwearColors};
    use karst::svgs::profile::legs::LegColors;
    use karst::svgs::profile::logo::{LogoVariants, LogoColors};
    use karst::svgs::profile::shoes::ShoeColors;
    use karst::svgs::profile::{headgear, face, hands, logo, body, shoes, legs, head};
    
    pub struct ChosenElements {
        background_color: BackgroundColors,
        skin_color: SkinColors,
        leg_color: LegColors,
        shoe_color: ShoeColors,
        hands_variant: HandsVariants,
        body_variant: BodyVariants,
        body_color: BodyColors,
        logo_variant: LogoVariants,
        logo_color: LogoColors,
        head_color: HeadColors,
        headwear_variant: HeadwearVariants,
        headwear_color: HeadwearColors,
        face_variant: FaceVariants,
        is_gold: bool,
    }

    pub fn get_profile_svg(profile_id: u64, block_seed: &[u8; 32]) -> (ByteArray, ByteArray) {
        let seed = generate_seed(profile_id, block_seed);
        let is_gold = profile_id <= 1000;
        let (chosen_elements, headwear_svg) = choose_elements(seed, is_gold);

        (generate_svg(&chosen_elements, &headwear_svg), get_traits(&chosen_elements))
    }

    fn generate_seed(profile_id: u64, block_seed: &[u8; 32]) -> u64 {
        let mut seed_data = [0u8; 40];
        seed_data[..8].copy_from_slice(&profile_id.to_be_bytes());
        seed_data[8..].copy_from_slice(block_seed);
        let seed_hash = keccak256(&seed_data);
        u64::from_be_bytes(seed_hash[..8].try_into().unwrap())
    }

    fn generate_svg(chosen_elements: &ChosenElements, headwear_svg: &str) -> ByteArray {
        format!(
            r#"<svg xmlns="http://www.w3.org/2000/svg" width="275" height="275" fill="none"><g>
            <path fill="url({})" d="M0 0h275v415H0z"/></g>
            <svg xmlns="http://www.w3.org/2000/svg" width="250" height="335" fill="none" id="container" x="32" viewBox="0 0 260 415" >
            {}
            </svg><defs><radialGradient id="green" cx="0" cy="0" r="1" gradientTransform="matrix(275 -275 362 362 0 275)" gradientUnits="userSpaceOnUse"><stop stop-color="#DFFFBF"/><stop offset="1" stop-color="#EFD"/></radialGradient><radialGradient id="pink" cx="0" cy="0" r="1" gradientTransform="matrix(275 -275 362 362 0 275)" gradientUnits="userSpaceOnUse"><stop stop-color="#FFE7F0"/><stop offset="1" stop-color="#FFF3F8"/></radialGradient><radialGradient id="purple" cx="0" cy="0" r="1" gradientTransform="matrix(275 -275 362 362 0 275)" gradientUnits="userSpaceOnUse"><stop stop-color="#F1E4FF"/><stop offset="1" stop-color="#F8F1FF"/></radialGradient><radialGradient id="blue" cx="0" cy="0" r="1" gradientTransform="matrix(275 -275 362 362 0 275)" gradientUnits="userSpaceOnUse"><stop stop-color="#E6EAFF"/><stop offset="1" stop-color="#EFF2FF"/></radialGradient><radialGradient id="yellow" cx="0" cy="0" r="1" gradientTransform="matrix(275 -275 362 362 0 275)" gradientUnits="userSpaceOnUse"><stop stop-color="#FFE7A5"/><stop offset="1" stop-color="#FFF2CE"/></radialGradient></defs></svg>"#,
            get_background_color(chosen_elements.background_color),
            generate_svg_elements(chosen_elements, headwear_svg)
        )
    }

    fn get_traits(chosen_elements: &ChosenElements) -> ByteArray {
        let mut traits = ByteArray::new();
        traits.push_str(&get_trait(chosen_elements.background_color));
        traits.push_str(&get_trait(chosen_elements.skin_color));
        traits.push_str(&get_trait(chosen_elements.leg_color));
        traits.push_str(&get_trait(chosen_elements.shoe_color));
        traits.push_str(&get_trait(chosen_elements.hands_variant));
        traits.push_str(&get_trait(chosen_elements.body_variant));
        traits.push_str(&get_trait(chosen_elements.body_color));
        traits.push_str(&get_trait(chosen_elements.face_variant));
        traits.push_str(&get_trait(chosen_elements.logo_variant));
        traits.push_str(&get_trait(chosen_elements.logo_color));
        traits.push_str(&get_trait(chosen_elements.headwear_variant));
        traits.push_str(&get_trait(chosen_elements.headwear_color));

        traits
    }

    fn get_trait(background_color: BackgroundColors) -> ByteArray {
        let string_background_color = match background_color {
            BackgroundColors::GREEN => "green",
            BackgroundColors::PINK => "pink",
            BackgroundColors::PURPLE => "purple",
            BackgroundColors::BLUE => "blue",
            BackgroundColors::GOLD => "gold",
        };
        format!(r#"{{"trait_type":"Background","value":"{}"}}, "#, string_background_color)
    }

    fn get_trait(skin_color: SkinColors) -> ByteArray {
        let string_skin_color = match skin_color {
            SkinColors::GREEN => "forest",
            SkinColors::PINK => "blush",
            SkinColors::PURPLE => "berry",
            SkinColors::BLUE => "ice",
            SkinColors::GOLD => "gold",
        };
        format!(r#"{{"trait_type":"Color","value":"{}"}}, "#, string_skin_color)
    }

    fn get_trait(leg_color: LegColors) -> ByteArray {
        let string_leg_color = match leg_color {
            LegColors::GREEN => "green",
            LegColors::DARK => "dark",
            LegColors::LIGHT => "light",
            LegColors::PURPLE => "purple",
            LegColors::BLUE => "blue",
            LegColors::PINK => "pink",
            LegColors::GOLD => "gold",
        };
        format!(r#"{{"trait_type":"Pants","value":"{}"}}, "#, string_leg_color)
    }

    fn get_trait(shoe_color: ShoeColors) -> ByteArray {
        let string_shoe_color = match shoe_color {
            ShoeColors::GREEN => "green",
            ShoeColors::DARK => "dark",
            ShoeColors::LIGHT => "light",
            ShoeColors::PURPLE => "purple",
            ShoeColors::BLUE => "blue",
            ShoeColors::PINK => "pink",
            ShoeColors::GOLD => "gold",
        };
        format!(r#"{{"trait_type":"Sneakers","value":"{}"}}, "#, string_shoe_color)
    }

    fn get_trait(hands_variant: HandsVariants) -> ByteArray {
        let string_hands_variant = match hands_variant {
            HandsVariants::HANDSDOWN => "chilling",
            HandsVariants::PEACEDOUBLE => "double peace",
            HandsVariants::PEACESINGLE => "peace",
        };
        format!(r#"{{"trait_type":"Hands","value":"{}"}}, "#, string_hands_variant)
    }

    fn get_trait(body_variant: BodyVariants) -> ByteArray {
        let string_body_variant = match body_variant {
            BodyVariants::HOODIE => "hoodie",
            BodyVariants::JACKET => "varsity",
            BodyVariants::TANKTOP => "tank",
            BodyVariants::TSHIRT => "tee",
            BodyVariants::SHIBUYA => "shibuya",
        };
        format!(r#"{{"trait_type":"Clothing","value":"{}"}}, "#, string_body_variant)
    }

    fn get_trait(body_color: BodyColors) -> ByteArray {
        let string_body_color = match body_color {
            BodyColors::GREEN => "green",
            BodyColors::LIGHT => "light",
            BodyColors::DARK => "dark",
            BodyColors::PURPLE => "purple",
            BodyColors::BLUE => "blue",
            BodyColors::PINK => "pink",
            BodyColors::GOLD => "gold",
        };
        format!(r#"{{"trait_type":"Clothing Color","value":"{}"}}, "#, string_body_color)
    }

    fn get_trait(logo_variant: LogoVariants) -> ByteArray {
        let string_logo_variant = match logo_variant {
            LogoVariants::HAPPY => "happy",
            LogoVariants::HEART => "heart",
            LogoVariants::LENS => "lens",
            LogoVariants::PEACE => "peace",
            LogoVariants::NONE => "none",
        };
        format!(r#",{{"trait_type":"Clothing Logo","value":"{}"}}"#, string_logo_variant)
    }

    fn get_trait(logo_color: LogoColors) -> ByteArray {
        let string_logo_color = match logo_color {
            LogoColors::GREEN => "green",
            LogoColors::PINK => "pink",
            LogoColors::PURPLE => "purple",
            LogoColors::BLUE => "blue",
            LogoColors::LIGHT => "light",
            LogoColors::GOLD => "gold",
            LogoColors::NONE => return ByteArray::new(),
        };
        format!(r#",{{"trait_type":"Clothing Logo Color","value":"{}"}}"#, string_logo_color)
    }

    fn get_trait(face_variant: FaceVariants) -> ByteArray {
        let string_face_variant = match face_variant {
            FaceVariants::BUBBLEGUM => "bubble gum",
            FaceVariants::GRIN_TONGUE => "silly",
            FaceVariants::GRIN => "happy",
            FaceVariants::LAUGH => "lol",
            FaceVariants::LOVE => "in love",
            FaceVariants::OOPS => "oops",
            FaceVariants::SLEEPY => "zzz",
            FaceVariants::SMILE_TEETH => "cheesin",
            FaceVariants::SMILE => "OG",
            FaceVariants::SMIRK => "slick",
            FaceVariants::TONGUE => "playful",
            FaceVariants::WINK => "wink",
            FaceVariants::WOW_TONGUE => "excited",
            FaceVariants::WOW => "lucy",
            FaceVariants::BABY => "baby",
            FaceVariants::KAWAII => "kawaii",
            FaceVariants::PIXIE => "pixie",
            FaceVariants::TODDLER => "toddler",
            FaceVariants::VAMP => "vamp",
        };
        format!(r#"{{"trait_type":"Mood","value":"{}"}}"#, string_face_variant)
    }

    fn get_trait(headwear_variant: HeadwearVariants) -> ByteArray {
        let string_headwear_variant = match headwear_variant {
            HeadwearVariants::NONE => "none",
            HeadwearVariants::BEANIE => "brrr",
            HeadwearVariants::HAT => "cap",
            HeadwearVariants::PLANTS => "lily",
            HeadwearVariants::SPARKLES => "sparkle",
            HeadwearVariants::CROWN => "king",
            HeadwearVariants::FLORAL => "queen",
            HeadwearVariants::GLASSES => "shady",
            HeadwearVariants::MUSHROOM => "mushie",
            HeadwearVariants::NIGHTCAP => "gn",
            HeadwearVariants::PARTYHAT => "birthday",
            HeadwearVariants::ICECREAM => "sweet",
            HeadwearVariants::BEAR => "bear",
            HeadwearVariants::BEE => "bee",
            HeadwearVariants::BIRDIE => "birdie",
            HeadwearVariants::BRAINS => "brains",
            HeadwearVariants::BULL => "bull",
            HeadwearVariants::EARRINGS => "earrings",
            HeadwearVariants::LOTUS => "lotus",
            HeadwearVariants::MAJOR => "major lenny",
            HeadwearVariants::SCOUT => "scout",
            HeadwearVariants::SHAMAN => "shaman",
        };
        format!(r#",{{"trait_type":"Headwear","value":"{}"}}"#, string_headwear_variant)
    }

    fn get_trait(headwear_color: HeadwearColors) -> ByteArray {
        let string_headwear_color = match headwear_color {
            HeadwearColors::NONE => return ByteArray::new(),
            HeadwearColors::GREEN => "green",
            HeadwearColors::PURPLE => "purple",
            HeadwearColors::BLUE => "blue",
            HeadwearColors::PINK => "pink",
            HeadwearColors::GOLD => "gold",
        };
        format!(r#",{{"trait_type":"Headwear Color","value":"{}"}}"#, string_headwear_color)
    }

    fn choose_elements(seed: u64, is_gold: bool) -> (ChosenElements, ByteArray) {
        let background_color = if is_gold {
            BackgroundColors::GOLD
        } else {
            BackgroundColors::from_u8(Helpers::get_color(seed, ComponentBytes::BACKGROUND) % BackgroundColors::count())
        };

        let skin_color = if is_gold {
            SkinColors::GOLD
        } else {
            SkinColors::from_u8(Helpers::get_color(seed, ComponentBytes::SKIN) % SkinColors::count())
        };

        let leg_color = if is_gold {
            LegColors::GOLD
        } else {
            LegColors::from_u8(Helpers::get_color(seed, ComponentBytes::LEGS) % LegColors::count())
        };

        let shoe_color = if is_gold {
            ShoeColors::GOLD
        } else {
            ShoeColors::from_u8(Helpers::get_color(seed, ComponentBytes::SHOES) % ShoeColors::count())
        };

        let hands_variant = HandsVariants::from_u8(Helpers::get_variant(seed, ComponentBytes::HANDS) % (HandsVariants::count() + 1));

        let body_variant = BodyVariants::from_u8(Helpers::get_variant(seed, ComponentBytes::BODY) % (BodyVariants::count() + 1));

        let body_color = if is_gold {
            BodyColors::GOLD
        } else {
            BodyColors::from_u8(Helpers::get_color(seed, ComponentBytes::BODY) % BodyColors::count())
        };

        let logo_variant = if body_variant == BodyVariants::SHIBUYA {
            LogoVariants::NONE
        } else {
            LogoVariants::from_u8(Helpers::get_variant(seed, ComponentBytes::LOGO) % (LogoVariants::count() + 1))
        };

        let logo_color = if logo_variant == LogoVariants::NONE {
            LogoColors::NONE
        } else if is_gold {
            LogoColors::GOLD
        } else {
            LogoColors::from_u8(Helpers::get_color(seed, ComponentBytes::LOGO) % LogoColors::count())
        };

        let face_variant = FaceVariants::from_u8(Helpers::get_variant(seed, ComponentBytes::FACE) % (FaceVariants::count() + 1));

        let (headwear_svg, headwear_variant, headwear_color) = headwear::get_headwear(seed, is_gold);

        let chosen_elements = ChosenElements {
            background_color,
            skin_color,
            leg_color,
            shoe_color,
            hands_variant,
            body_variant,
            body_color,
            logo_variant,
            logo_color,
            head_color: HeadColors::from_u8(skin_color as u8),
            headwear_variant,
            headwear_color,
            face_variant,
            is_gold,
        };

        (chosen_elements, headwear_svg)
    }

    fn generate_svg_elements(chosen_elements: &ChosenElements, headwear_svg: &str) -> ByteArray {
        format!(
            "{}{}{}{}{}{}{}{}",
            legs::get_legs(chosen_elements.leg_color),
            shoes::get_shoes(chosen_elements.shoe_color),
            body::get_body(
                chosen_elements.body_variant,
                chosen_elements.body_color,
                chosen_elements.hands_variant,
                HandsColors::from(chosen_elements.skin_color as u8)
            ),
            logo::get_logo(
                chosen_elements.logo_variant,
                chosen_elements.logo_color,
                chosen_elements.body_variant,
                chosen_elements.body_color
            ),
            head::get_head(HeadColors::from(chosen_elements.skin_color as u8)),
            face::get_face(
                chosen_elements.face_variant,
                if chosen_elements.is_gold { FaceColors::GOLD } else { FaceColors::NORMAL },
                chosen_elements.skin_color
            ),
            headwear_svg,
            hands::get_hands(
                chosen_elements.hands_variant,
                HandsColors::from(chosen_elements.skin_color as u8),
                chosen_elements.body_variant,
                chosen_elements.body_color
            ),
            if chosen_elements.is_gold { gold_sparkles::get_gold_sparkles() } else { ByteArray::new() }
        )
    }
