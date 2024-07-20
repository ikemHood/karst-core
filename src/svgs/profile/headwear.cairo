mod headwear{
    use karst::svgs::profile::helpers;
    use karst::svgs::profile::headgear::{headwearbear,headwearbee,headwearbirdie,headwearbrains,headwearbull,headwearcrown,headwearearrings,headwearfloral,headwearglasses,headwearhat,headwearicecream,headwearlotus,headwearmajor,headwearmushroom,headwearnightcap,headwearpartyhat,headwearplants,headwearscout,headwearshaman,headwearsparkles};
    pub enum HeadwearVariants {
        NONE,
        BEANIE,
        HAT,
        PLANTS,
        SPARKLES,
        CROWN,
        FLORAL,
        GLASSES,
        MUSHROOM,
        NIGHTCAP,
        PARTYHAT,
        BEAR,
        BEE,
        BIRDIE,
        BRAINS,
        BULL,
        EARRINGS,
        LOTUS,
        MAJOR,
        SCOUT,
        SHAMAN,
        ICECREAM,
    }

    pub enum HeadwearColors {
        NONE,
        GREEN,
        PURPLE,
        BLUE,
        PINK,
        GOLD,
    }

    pub fn get_headwear(
        seed: u256,
        is_gold: bool,
    ) -> (ByteArray, HeadwearVariants, HeadwearColors) {
        let mut variant = HeadwearVariants::from_u8(
            Helpers::get_variant(seed, Helpers::ComponentBytes::HEADWEAR) % (HeadwearVariants::ICECREAM as u8 + 1)
        );
        if Helpers::get_variant(seed, Helpers::ComponentBytes::HEADWEAR) == 69 {
            variant = HeadwearVariants::ICECREAM;
        }

        match variant {
            HeadwearVariants::NONE => ("", HeadwearVariants::NONE, HeadwearColors::NONE),
            HeadwearVariants::BEANIE => {
                let beanie_color = if is_gold {
                    HeadwearBeanie::BeanieColors::GOLD
                } else {
                    HeadwearBeanie::BeanieColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearBeanie::BeanieColors::max() as u8
                    )
                };
                HeadwearBeanie::get_beanie(beanie_color)
            },
            HeadwearVariants::HAT => {
                let hat_color = if is_gold {
                    HeadwearHat::HatColors::GOLD
                } else {
                    HeadwearHat::HatColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearHat::HatColors::max() as u8
                    )
                };
                HeadwearHat::get_hat(hat_color)
            },
            HeadwearVariants::ICECREAM => {
                let icecream_color = if is_gold {
                    HeadwearIcecream::IcecreamColors::GOLD
                } else {
                    HeadwearIcecream::IcecreamColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearIcecream::IcecreamColors::max() as u8
                    )
                };
                HeadwearIcecream::get_icecream(icecream_color)
            },
            HeadwearVariants::PLANTS => {
                let plants_color = if is_gold {
                    HeadwearPlants::PlantsColors::GOLD
                } else {
                    HeadwearPlants::PlantsColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearPlants::PlantsColors::max() as u8
                    )
                };
                HeadwearPlants::get_plants(plants_color)
            },
            HeadwearVariants::SPARKLES => {
                HeadwearSparkles::get_sparkles(
                    if is_gold { HeadwearSparkles::SparklesColors::GOLD } else { HeadwearSparkles::SparklesColors::NONE }
                )
            },
            HeadwearVariants::CROWN => {
                let crown_color = if is_gold {
                    HeadwearCrown::CrownColors::GOLD
                } else {
                    HeadwearCrown::CrownColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearCrown::CrownColors::max() as u8
                    )
                };
                HeadwearCrown::get_crown(crown_color)
            },
            HeadwearVariants::FLORAL => {
                let floral_color = if is_gold {
                    HeadwearFloral::FloralColors::GOLD
                } else {
                    HeadwearFloral::FloralColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearFloral::FloralColors::max() as u8
                    )
                };
                HeadwearFloral::get_floral(floral_color)
            },
            HeadwearVariants::GLASSES => {
                let glasses_color = if is_gold {
                    HeadwearGlasses::GlassesColors::GOLD
                } else {
                    HeadwearGlasses::GlassesColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearGlasses::GlassesColors::max() as u8
                    )
                };
                HeadwearGlasses::get_glasses(glasses_color)
            },
            HeadwearVariants::MUSHROOM => {
                let mushroom_color = if is_gold {
                    HeadwearMushroom::MushroomColors::GOLD
                } else {
                    HeadwearMushroom::MushroomColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearMushroom::MushroomColors::max() as u8
                    )
                };
                HeadwearMushroom::get_mushroom(mushroom_color)
            },
            HeadwearVariants::NIGHTCAP => {
                let nightcap_color = if is_gold {
                    HeadwearNightcap::NightcapColors::GOLD
                } else {
                    HeadwearNightcap::NightcapColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearNightcap::NightcapColors::max() as u8
                    )
                };
                HeadwearNightcap::get_nightcap(nightcap_color)
            },
            HeadwearVariants::PARTYHAT => {
                let partyhat_color = if is_gold {
                    HeadwearPartyhat::PartyhatColors::GOLD
                } else {
                    HeadwearPartyhat::PartyhatColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearPartyhat::PartyhatColors::max() as u8
                    )
                };
                HeadwearPartyhat::get_partyhat(partyhat_color)
            },
            HeadwearVariants::BEAR => {
                let bear_color = if is_gold {
                    HeadwearBear::BearColors::GOLD
                } else {
                    HeadwearBear::BearColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearBear::BearColors::max() as u8
                    )
                };
                HeadwearBear::get_bear(bear_color)
            },
            HeadwearVariants::BEE => {
                let bee_color = if is_gold {
                    HeadwearBee::BeeColors::GOLD
                } else {
                    HeadwearBee::BeeColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearBee::BeeColors::max() as u8
                    )
                };
                HeadwearBee::get_bee(bee_color)
            },
            HeadwearVariants::BIRDIE => {
                let birdie_color = if is_gold {
                    HeadwearBirdie::BirdieColors::GOLD
                } else {
                    HeadwearBirdie::BirdieColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearBirdie::BirdieColors::max() as u8
                    )
                };
                HeadwearBirdie::get_birdie(birdie_color)
            },
            HeadwearVariants::BRAINS => {
                let brains_color = if is_gold {
                    HeadwearBrains::BrainsColors::GOLD
                } else {
                    HeadwearBrains::BrainsColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearBrains::BrainsColors::max() as u8
                    )
                };
                HeadwearBrains::get_brains(brains_color)
            },
            HeadwearVariants::BULL => {
                let bull_color = if is_gold {
                    HeadwearBull::BullColors::GOLD
                } else {
                    HeadwearBull::BullColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearBull::BullColors::max() as u8
                    )
                };
                HeadwearBull::get_bull(bull_color)
            },
            HeadwearVariants::EARRINGS => {
                let earrings_color = if is_gold {
                    HeadwearEarrings::EarringsColors::GOLD
                } else {
                    HeadwearEarrings::EarringsColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearEarrings::EarringsColors::max() as u8
                    )
                };
                HeadwearEarrings::get_earrings(earrings_color)
            },
            HeadwearVariants::LOTUS => {
                let lotus_color = if is_gold {
                    HeadwearLotus::LotusColors::GOLD
                } else {
                    HeadwearLotus::LotusColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearLotus::LotusColors::max() as u8
                    )
                };
                HeadwearLotus::get_lotus(lotus_color)
            },
            HeadwearVariants::MAJOR => {
                let major_color = if is_gold {
                    HeadwearMajor::MajorColors::GOLD
                } else {
                    HeadwearMajor::MajorColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearMajor::MajorColors::max() as u8
                    )
                };
                HeadwearMajor::get_major(major_color)
            },
            HeadwearVariants::SCOUT => {
                let scout_color = if is_gold {
                    HeadwearScout::ScoutColors::GOLD
                } else {
                    HeadwearScout::ScoutColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearScout::ScoutColors::max() as u8
                    )
                };
                HeadwearScout::get_scout(scout_color)
            },
            HeadwearVariants::SHAMAN => {
                let shaman_color = if is_gold {
                    HeadwearShaman::ShamanColors::GOLD
                } else {
                    HeadwearShaman::ShamanColors::from_u8(
                        Helpers::get_color(seed, Helpers::ComponentBytes::HEADWEAR) % HeadwearShaman::ShamanColors::max() as u8
                    )
                };
                HeadwearShaman::get_shaman(shaman_color)
            },
        }
    }
}