pub mod face {
    use karst::svgs::profile::lenscolors;
    use karst::svgs::profile::helpers::skin::{SkinColors};
    pub enum FaceVariants {
        BUBBLEGUM,    // 0
        GRIN_TONGUE,  // 1
        GRIN,         // 2
        LAUGH,        // 3
        LOVE,         // 4
        OOPS,         // 5
        SLEEPY,       // 6
        SMILE_TEETH,  // 7
        SMILE,        // 8
        SMIRK,        // 9
        TONGUE,       // 10
        WINK,         // 11
        WOW_TONGUE,   // 12
        WOW,          // 13
        BABY,         // 14
        KAWAII,       // 15
        PIXIE,        // 16
        TODDLER,      // 17
        VAMP,         // 18
    }

    pub enum FaceColors {
        NORMAL,
        GOLD,
    }

    pub fn get_face(
        face_variant: FaceVariants,
        face_color: FaceColors,
        skin_color: SkinColors,
    ) -> ByteArray {
        let face_svg_start =  format!(
    r#"<svg xmlns="http://www.w3.org/2000/svg" width="210" height="335" fill="none">{}</svg>"#,
    get_style_tag(face_color, skin_color)
        );
        format!("{}{}", face_svg_start, get_face_variant(face_variant))
    }

    fn get_face_variant(face_variant: FaceVariants) -> ByteArray {
        match face_variant {
            FaceVariants::BUBBLEGUM => format!(
    "<path class=\"{}\" fill-rule=\"evenodd\" d=\"{}\" clip-rule=\"evenodd\"/> \
     <path class=\"{}\" fill-opacity=\"{}\" d=\"{}\"/> \
     <circle cx=\"{}\" cy=\"{}\" r=\"{}\" class=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path fill=\"{}\" fill-opacity=\"{}\" class=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <circle cx=\"{}\" cy=\"{}\" r=\"{}\" fill=\"{}\" fill-opacity=\"{}\" transform=\"{}\"/> \
     <path fill=\"{}\" fill-opacity=\"{}\" d=\"{}\"/>",
    "faceFillColor", 
    "M94.1 139c.7-.4 1-1.1.8-1.8-1.4-3.7-4.5-6.2-8-6.2-5 0-8.9 4.7-8.9 10.4s4 10.4 8.8 10.4c3.5 0 6.5-2.4 8-5.8.3-.7-.1-1.5-.8-1.8l-3.6-1.5c-1-.4-1-1.8 0-2.2l3.7-1.6Zm20.8 2.4c0-5.7 4-10.4 8.8-10.4 3.7 0 7 2.7 8.2 6.5.3.7-.1 1.4-.8 1.7l-3 1.3c-1 .4-1 1.8 0 2.2l2.9 1.2c.7.3 1 1 .8 1.8-1.4 3.6-4.5 6.1-8 6.1-5 0-8.9-4.7-8.9-10.4Z", 
    "faceFillColor", 
    ".12", 
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z", 
    "105", 
    "161.581", 
    "3.466", 
    "faceFillColor", 
    "faceStrokeColor", 
    "round", 
    "2.5", 
    "M99 166s1.7 3.2 6 3.2 6-3.2 6-3.2m0-8.8s-1.7-3.2-6-3.2-6 3.2-6 3.2", 
    "#FFCFEC", 
    ".8", 
    "faceStrokeColor", 
    "2.75", 
    "M94.3 144.7A32 32 0 0 0 34.5 161 32 32 0 0 0 94 178l2.3-3.8a310 310 0 0 1 4-6.6l3-4a3.4 3.4 0 0 0 0-4l-2.2-3.2a51 51 0 0 1-3.4-5.7l-.9-1.7c-.8-1.4-1.5-2.9-2.4-4.3Z", 
    "-1.289", 
    "11.289", 
    "3.289", 
    "#fff", 
    ".45", 
    "scale(-1 1) rotate(5 -1761 -904)", 
    "#fff", 
    ".45", 
    "M87.3 150.8a4 4 0 0 1-7.4 3.4 14.7 14.7 0 0 0-7.3-8l-1.4-.8A2.5 2.5 0 0 1 70 142l.1-.3c.6-1.1 0-2.6-1.3-2.8-1.5-.2-2.8-.3-4.1-.2a1.5 1.5 0 0 1-.4-2.9 19.4 19.4 0 0 1 13.7 4c1 .5 1.8 1.2 2.8 2 2 1.8 3.7 4 4.7 5.7a34.4 34.4 0 0 1 1.6 3v.1h.1v.1"
),
    FaceVariants::GRIN_TONGUE => format!(
    "<path class=\"{}\" fill-opacity=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" fill=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path fill=\"{}\" d=\"{}\"/>",
    "faceFillColor", 
    ".12", 
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z", 
    "faceStrokeColor", 
    "round", 
    "3.5", 
    "M130.8 145.9s-2.1-4.2-7.4-4.5a8.8 8.8 0 0 0-7.8 3.7m-36.4.8s2.1-4.2 7.4-4.5a8.8 8.8 0 0 1 7.8 3.7", 
    "faceFillColor", 
    "M105 172c-15 0-20.6-8-18.6-13.6 1.4-4.1 6-6.4 10.4-5a35 35 0 0 0 8.2 1.6c2.3 0 6.3-1 8.2-1.6 4.3-1.4 9 .9 10.4 5 2 5.5-3.6 13.6-18.6 13.6Z", 
    "faceStrokeColor", 
    "#FFDFE7", 
    "2.75", 
    "M98.7 161.4h1.3l1.7.4 1 .3.8.2 1.5.2 1.5-.2.9-.2.9-.3a21.3 21.3 0 0 1 1.8-.3l1.2-.1c2.2.3 3.6 1.3 4.4 2.6a8 8 0 0 1 .7 5.2 11.1 11.1 0 0 1-11.4 9.4 11.1 11.1 0 0 1-11.4-9.4c-.4-2-.1-3.8.7-5.2.8-1.3 2.2-2.3 4.4-2.6Z", 
    "#F5C8D4", 
    "M106 163.8v7a1 1 0 0 1-2 0v-7l1 .2 1-.2Z"
),
            FaceVariants::GRIN => format!(
    "<path class=\"{}\" fill-opacity=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/></svg>",
    "faceFillColor",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "faceStrokeColor",
    "round",
    "3",
    "M91 159s4.3 6 14 6 14-6 14-6",
    "faceStrokeColor",
    "round",
    "round",
    "2.5",
    "M89 159c.8-.4 1.5-1 2-2m30 2c-.8-.4-1.5-1-2-2",
    "faceStrokeColor",
    "round",
    "3.5",
    "M130.8 145.9s-2.1-4.2-7.4-4.5a8.8 8.8 0 0 0-7.8 3.7m-36.4.8s2.1-4.2 7.4-4.5a8.8 8.8 0 0 1 7.8 3.7"
),
            FaceVariants::LAUGH => format!(
    "<path class=\"{}\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" d=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path fill=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-opacity=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path fill=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-opacity=\"{}\" stroke-width=\"{}\" d=\"{}\"/></svg>",
    "faceStrokeColor",
    "round",
    "3.5",
    "M130.8 143.9s-2.1-4.2-7.4-4.5a8.8 8.8 0 0 0-7.8 3.7m-36.4.8s2.1-4.2 7.4-4.5a8.8 8.8 0 0 1 7.8 3.7",
    "faceFillColor",
    "M91 157.3c0-4.3 2-6 14-6s14 1.7 14 6-6.3 9.5-14 9.5-14-5.2-14-9.5Z",
    "105",
    "161.607",
    "#FFDFE7",
    "11.15",
    "3.626",
    "faceStrokeColor",
    "round",
    "round",
    "3.176",
    "M91 157c0-4.3 0-6 14-6s14 1.7 14 6c0 5.2-6.3 9.4-14 9.4s-14-4.2-14-9.4Z",
    "#E3F7FF",
    "M70.2 149.5c-2.5 1.1-5.6 1.3-7.6 3.3a5.5 5.5 0 1 0 7.8 7.8c2-2 2.2-5 3.3-7.6l1.4-3.3c.4-1-.6-2-1.6-1.6l-3.3 1.4Z",
    "faceStrokeColor",
    ".1",
    "2.5",
    "M61.7 151.9a6.8 6.8 0 1 0 9.6 9.6 10 10 0 0 0 2.3-4.1l.4-1.5.8-2.4 1.5-3.3c.8-2-1.2-4.1-3.3-3.2l-3.3 1.4-2.4.8-1.5.4a9.5 9.5 0 0 0-4 2.3Z",
    "#E3F7FF",
    "M139.8 149.5c2.5 1.1 5.6 1.3 7.6 3.3a5.5 5.5 0 1 1-7.8 7.8c-2-2-2.2-5-3.3-7.6l-1.4-3.3c-.4-1 .6-2 1.6-1.6l3.3 1.4Z",
    "faceStrokeColor",
    ".1",
    "2.5",
    "M148.3 151.9a6.8 6.8 0 0 1-9.6 9.6 10 10 0 0 1-2.3-4.1 50.4 50.4 0 0 1-.4-1.5l-.8-2.4-1.5-3.3c-.8-2 1.2-4.1 3.3-3.2l3.3 1.4 2.4.8 1.5.4c1.4.5 2.9 1.1 4 2.3Z"
),
            FaceVariants::LOVE => format!(
    "<path class=\"faceFillColor\" d=\"M91 160.3c0-4.3 2-6 14-6s14 1.7 14 6-6.3 9.5-14 9.5-14-5.2-14-9.5Z\"/> \
     <ellipse cx=\"105\" cy=\"164.607\" fill=\"#FFDFE7\" rx=\"11.15\" ry=\"3.626\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3.176\" d=\"M91 160c0-4.3 0-6 14-6s14 1.7 14 6c0 5.2-6.3 9.4-14 9.4s-14-4.2-14-9.4Z\"/> \
     <path class=\"faceStrokeColor\" fill=\"#FF88A5\" stroke-width=\"3\" d=\"M94.2 130.8a7.7 7.7 0 0 0-2.7-1.3 7.6 7.6 0 0 0-5.8.7 7.7 7.7 0 0 0-2.2 1.9 7.7 7.7 0 0 0-2.7-1.3 7.6 7.6 0 0 0-3-.2 7.6 7.6 0 0 0-2.7.9 7.7 7.7 0 0 0-2.3 2 7.6 7.6 0 0 0-1 1.7 7.2 7.2 0 0 0-.5 1.9 7.3 7.3 0 0 0 1.4 5.5A7.3 7.3 0 0 0 74 144l9.3 7.1a3.5 3.5 0 0 0 4.9-.6l7.2-9.2a7.2 7.2 0 0 0 1.6-5.6 7.4 7.4 0 0 0-.5-1.8 7.8 7.8 0 0 0-1-1.7 7.3 7.3 0 0 0-1.4-1.5Zm43.3 2.6a7.6 7.6 0 0 0-5.1-2.8 7.6 7.6 0 0 0-3 .2 7.7 7.7 0 0 0-2.6 1.3 7.7 7.7 0 0 0-2.3-2 7.6 7.6 0 0 0-2.8-.8 7.6 7.6 0 0 0-3 .2 7.7 7.7 0 0 0-2.6 1.3 7.6 7.6 0 0 0-1.5 1.4 7.2 7.2 0 0 0-1 1.8 7.8 7.8 0 0 0-.4 1.9 7.8 7.8 0 0 0 .5 3.8 7.3 7.3 0 0 0 1 1.7l7.3 9.2a3.5 3.5 0 0 0 4.9.6l9.3-7.1a7.6 7.6 0 0 0 1.4-1.5 7.2 7.2 0 0 0 1-1.7 7.8 7.8 0 0 0 .4-1.9 7.4 7.4 0 0 0 0-2 7.8 7.8 0 0 0-.5-1.8 7.3 7.3 0 0 0-1-1.8Z\"/> \
     <path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/> \
     <path fill=\"#E3F7FF\" d=\"M54.9 135.7c1 2.7 3.1 5.1 3.1 8a5.7 5.7 0 0 1-11.3 0c0-2.9 2-5.3 3.1-8l1.4-3.4c.4-1 1.9-1 2.3 0l1.4 3.4Z\"/> \
     <path class=\"faceStrokeColor\" stroke-opacity=\".1\" stroke-width=\"2.5\" d=\"M52.4 150.6a7 7 0 0 0 6.9-7c0-1.7-.7-3.2-1.3-4.5a51 51 0 0 0-.8-1.5l-1.2-2.3-1.3-3.5a2.5 2.5 0 0 0-4.7 0l-1.3 3.5-1.2 2.3a51 51 0 0 0-.8 1.5c-.6 1.3-1.3 2.8-1.3 4.6a7 7 0 0 0 7 6.9Z\"/> \
     <path class=\"{}\" d=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" fill=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" fill-opacity=\"{}\" d=\"{}\"/> \
     <path fill=\"{}\" d=\"{}\"/> \
     <path class=\"{}\" stroke-opacity=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <ellipse class=\"{}\" cx=\"{}\" cy=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <ellipse class=\"{}\" cx=\"{}\" cy=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <path class=\"{}\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"{}\" fill-opacity=\"{}\" rx=\"{}\" ry=\"{}\" transform=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"{}\" fill-opacity=\"{}\" rx=\"{}\" ry=\"{}\" transform=\"{}\"/>",
    "faceFillColor",
    "M91 160.3c0-4.3 2-6 14-6s14 1.7 14 6-6.3 9.5-14 9.5-14-5.2-14-9.5Z",
    "105",
    "164.607",
    "#FFDFE7",
    "11.15",
    "3.626",
    "faceStrokeColor",
    "round",
    "round",
    "3.176",
    "M91 160c0-4.3 0-6 14-6s14 1.7 14 6c0 5.2-6.3 9.4-14 9.4s-14-4.2-14-9.4Z",
    "faceStrokeColor",
    "#FF88A5",
    "3",
    "M94.2 130.8a7.7 7.7 0 0 0-2.7-1.3 7.6 7.6 0 0 0-5.8.7 7.7 7.7 0 0 0-2.2 1.9 7.7 7.7 0 0 0-2.7-1.3 7.6 7.6 0 0 0-3-.2 7.6 7.6 0 0 0-2.7.9 7.7 7.7 0 0 0-2.3 2 7.6 7.6 0 0 0-1 1.7 7.2 7.2 0 0 0-.5 1.9 7.3 7.3 0 0 0 1.4 5.5A7.3 7.3 0 0 0 74 144l9.3 7.1a3.5 3.5 0 0 0 4.9-.6l7.2-9.2a7.2 7.2 0 0 0 1.6-5.6 7.4 7.4 0 0 0-.5-1.8 7.8 7.8 0 0 0-1-1.7 7.3 7.3 0 0 0-1.4-1.5Zm43.3 2.6a7.6 7.6 0 0 0-5.1-2.8 7.6 7.6 0 0 0-3 .2 7.7 7.7 0 0 0-2.6 1.3 7.7 7.7 0 0 0-2.3-2 7.6 7.6 0 0 0-2.8-.8 7.6 7.6 0 0 0-3 .2 7.7 7.7 0 0 0-2.6 1.3 7.6 7.6 0 0 0-1.5 1.4 7.2 7.2 0 0 0-1 1.8 7.8 7.8 0 0 0-.4 1.9 7.8 7.8 0 0 0 .5 3.8 7.3 7.3 0 0 0 1 1.7l7.3 9.2a3.5 3.5 0 0 0 4.9.6l9.3-7.1a7.6 7.6 0 0 0 1.4-1.5 7.2 7.2 0 0 0 1-1.7 7.8 7.8 0 0 0 .4-1.9 7.4 7.4 0 0 0 0-2 7.8 7.8 0 0 0-.5-1.8 7.3 7.3 0 0 0-1-1.8Z",
    "faceFillColor",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "#E3F7FF",
    "M54.9 135.7c1 2.7 3.1 5.1 3.1 8a5.7 5.7 0 0 1-11.3 0c0-2.9 2-5.3 3.1-8l1.4-3.4c.4-1 1.9-1 2.3 0l1.4 3.4Z",
    "faceStrokeColor",
    ".1",
    "2.5",
    "M52.4 150.6a7 7 0 0 0 6.9-7c0-1.7-.7-3.2-1.3-4.5a51 51 0 0 0-.8-1.5l-1.2-2.3-1.3-3.5a2.5 2.5 0 0 0-4.7 0l-1.3 3.5-1.2 2.3a51 51 0 0 0-.8 1.5c-.6 1.3-1.3 2.8-1.3 4.6a7 7 0 0 0 7 6.9Z",
    "138.864",
    "142.272",
    "#DCE7ED",
    "14.063",
    "13.375",
    "faceStrokeColor",
    "152.99",
    "138.797",
    "6.383",
    "6.43",
    "faceStrokeColor",
    "138.136",
    "126.423",
    "#DCE7ED",
    "6.66",
    "6.927",
    "faceStrokeColor",
    "142.272",
    "6.43",
    "6.66",
    "faceStrokeColor",
    "round",
    "round",
    "3",
    "M96 158h18",
    "9",
    "7.271",
    "#fff",
    ".45",
    "9",
    "7.271",
    "matrix(-1 0 0 1 86 149)",
    "9",
    "7.271",
    "#fff",
    ".45",
    "9",
    "7.271",
    "matrix(-1 0 0 1 142 149)"
),
            FaceVariants::OOPS => format!(
    "{}{}",
    face_svg_start,
    r#"<ellipse cx="86.917" cy="142.271" fill="#fff" rx="9.917" ry="10.271"/>
    <ellipse class="faceFillColor" cx="86.917" cy="142.272" rx="6.43" ry="6.66"/>
    <ellipse cx="123.083" cy="142.271" fill="#fff" rx="9.917" ry="10.271"/>
    <ellipse class="faceFillColor" cx="123.083" cy="142.272" rx="6.43" ry="6.66"/>
    <path class="faceStrokeColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M96 158h18"/>
    <ellipse cx="9" cy="7.271" fill="#fff" fill-opacity=".45" rx="9" ry="7.271" transform="matrix(-1 0 0 1 86 149)"/>
    <ellipse cx="9" cy="7.271" fill="#fff" fill-opacity=".45" rx="9" ry="7.271" transform="matrix(-1 0 0 1 142 149)"/>
    "# 
),
            FaceVariants::SLEEPY => format!(
    "<path class=\"faceFillColor\" fill-opacity=\".12\" d=\"{}\"/> \
     <path class=\"faceFillColor faceStrokeColor\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor faceStrokeColor\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor faceStrokeColor\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path fill=\"#fff\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/>",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    ".105",
    "M126.4 154.4h-6a1.1 1.1 0 0 0 0 2.3h3c.2 0 .3.3.2.4l-4.3 5.2a1.4 1.4 0 0 0 1 2.3h6.6a1.1 1.1 0 0 0 0-2.3h-3.7a.3.3 0 0 1-.2-.4l4.4-5.2a1.4 1.4 0 0 0-1-2.3Z",
    ".211",
    "m134.4 149.2-4.5 1a1 1 0 0 0 .4 1.8l2-.5a.2.2 0 0 1 .3.3l-2.3 4.5a1.1 1.1 0 0 0 1.2 1.6l5-1a1 1 0 0 0-.5-1.9l-2.6.6a.2.2 0 0 1-.2-.3l2.4-4.5a1.1 1.1 0 0 0-1.2-1.6Z",
    ".316",
    "m143 152-3.4.8a.8.8 0 1 0 .3 1.5l1.5-.3.1.1-1.7 3.3a1 1 0 0 0 1 1.4l3.7-.8a.8.8 0 0 0-.3-1.6l-1.9.4a.1.1 0 0 1-.1-.2l1.7-3.2a1 1 0 0 0-1-1.4Z",
    "round",
    "3.5",
    "M130.8 143s-2.3 4-7.6 4-7.6-4-7.6-4M79 143s2.3 4 7.6 4 7.6-4 7.6-4",
    "M114 160c0 3-4 4.2-9 4.2s-9-1.2-9-4.1c0-3 4-6.5 9-6.5s9 3.6 9 6.5Z",
    "M98 154.6h14v1.9c0 1.2-1 2.1-2.1 2.1H100a2.1 2.1 0 0 1-2.1-2.1v-1.9Z",
    "round",
    "round",
    "3.176",
    "M114 160c0 3-4 4.2-9 4.2s-9-1.2-9-4.1c0-3 4-6.5 9-6.5s9 3.6 9 6.5Z"
),
            FaceVariants::SMILE_TEETH => format!(
    "<path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"#fff\" fill-opacity=\"{}\" rx=\"{}\" ry=\"{}\" transform=\"{}\"/> \
     <ellipse cx=\"{}\" cy=\"{}\" fill=\"#fff\" fill-opacity=\"{}\" rx=\"{}\" ry=\"{}\" transform=\"{}\"/> \
     <path fill=\"#fff\" d=\"{}\"/> \
     <path fill=\"#fff\" d=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/>",
    "round",
    "3.5",
    "M77.2 142s2.5-4.2 8.4-4.5c6-.4 8.9 3.5 8.9 3.5m38.3 1s-2.5-4.2-8.4-4.5c-6-.4-8.9 3.5-8.9 3.5",
    "9",
    "7.271",
    ".45",
    "9",
    "7.271",
    "matrix(-1 0 0 1 80 145)",
    "9",
    "7.271",
    ".45",
    "9",
    "7.271",
    "matrix(-1 0 0 1 148 145)",
    "M105.2 150.4c-2.6 0-5.9-1.3-8.6-1.4-2.7 0-5.6.3-7.8 1.5-3.8 2-5.5 6-4.5 9.6.9 3.6 4.1 6.6 8 8.4 4 1.8 8 2.5 12.6 2.5",
    "M105.2 150.4c2.8 0 5.5-1.3 8.2-1.4 2.7-.1 5.6.3 7.8 1.5 3.8 2 5.5 6 4.5 9.6-.9 3.6-4.1 6.6-8 8.4a31 31 0 0 1-12.8 2.5",
    "M86.7 154.3a2 2 0 0 0-.4 1l.3.9c.2.3.3.7.3 1 0 .4-.1 1-.3 1.3l-.6 1c-.1.4-.2.8 0 1-.5-.3-.7-.9-.8-1.4-.2-.5-.3-1-.3-1.6 0-.6.1-1.2.4-1.8.4-.5.7-1.2 1.4-1.4Zm36.6 0c.1.2.4.6.4 1l-.3.9a2 2 0 0 0-.3 1c0 .4.1 1 .3 1.3l.6 1v1c.5-.3.7-.9.8-1.4.2-.5.3-1 .3-1.6a4 4 0 0 0-.5-1.8c-.3-.5-.6-1.2-1.3-1.4Z",
    "round",
    "round",
    "3",
    "M105.2 150.4c-2.6 0-5.9-1.3-8.6-1.4-2.7 0-5.6.3-7.8 1.5-3.8 2-5.5 6-4.5 9.6.9 3.6 4.1 6.6 8 8.4 4 1.8 8 2.5 12.6 2.5",
    "round",
    "round",
    "3",
    "M105.2 150.4c2.8 0 5.5-1.3 8.2-1.4 2.7-.1 5.6.3 7.8 1.5 3.8 2 5.5 6 4.5 9.6-.9 3.6-4.1 6.6-8 8.4a31 31 0 0 1-12.8 2.5",
    "round",
    "2",
    "m93 159 3 1 2.4.3a2 2 0 0 0 1.9-1l.1-.4c.3-.4.9-.3 1 .1l.4 2.8c.1.5.8.5.9 0v0a1.8 1.8 0 0 1 1.7-1.2h4.7"
),
            FaceVariants::SMILE => format!(
    "<path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <path class=\"faceFillColor\" fill-opacity=\"{}\" d=\"{}\"/>",
    "round",
    "3",
    "M91 159s4.3 6 14 6 14-6 14-6",
    "round",
    "round",
    "2.5",
    "M89 159c.8-.4 1.5-1 2-2m30 2c-.8-.4-1.5-1-2-2",
    "evenodd",
    "M94.1 139c.7-.4 1-1.1.8-1.8-1.4-3.7-4.5-6.2-8-6.2-5 0-8.9 4.7-8.9 10.4s4 10.4 8.8 10.4c3.5 0 6.5-2.4 8-5.8.3-.7-.1-1.5-.8-1.8l-3.6-1.5c-1-.4-1-1.8 0-2.2l3.7-1.6Zm20.8 2.4c0-5.7 4-10.4 8.8-10.4 3.7 0 7 2.7 8.2 6.5.3.7-.1 1.4-.8 1.7l-3 1.3c-1 .4-1 1.8 0 2.2l2.9 1.2c.7.3 1 1 .8 1.8-1.4 3.6-4.5 6.1-8 6.1-5 0-8.9-4.7-8.9-10.4Z",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z"
),
            FaceVariants::SMIRK => format!(
    "<path class=\"faceFillColor\" fill-opacity=\"{}\" d=\"{}\"/> \
     <path fill=\"#fff\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path fill=\"#fff\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"{}\" stroke-linejoin=\"{}\" stroke-width=\"{}\" d=\"{}\"/>",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "M73.9 139.8a11.7 11.7 0 0 0 0 1.1c0 5.6 4 11.2 10.2 11.2 6.3 0 10.4-5.6 10.4-11.2v-1.1H73.8Z",
    "round",
    "round",
    "3.5",
    "M73 140.7s4.7-.9 11.1-.9c6.4 0 11.2.9 11.2.9",
    "M77.7 139.5a9.8 9.8 0 0 0 0 .8c0 4 2.5 8.1 6.4 8.1 4 0 6.5-4 6.5-8v-1h-13Z",
    "M135.8 139.8v1.1c0 5.6-4 11.2-10.3 11.2-6.2 0-10.3-5.6-10.3-11.2v-1.1h20.6Z",
    "round",
    "round",
    "3.5",
    "M136.6 140.7s-4.7-.9-11-.9c-6.5 0-11.2.9-11.2.9",
    "M132 139.5v.8c0 4-2.6 8.1-6.5 8.1s-6.4-4-6.4-8v-1H132Z",
    "round",
    "round",
    "3.156",
    "M90 160a31.3 31.3 0 0 0 20 2.4"
),
            FaceVariants::TONGUE => format!(
    "<path class=\"faceFillColor\" fill-opacity=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" fill=\"{}\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/>",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "evenodd",
    "M94.1 139c.7-.4 1-1.1.8-1.8-1.4-3.7-4.5-6.2-8-6.2-5 0-8.9 4.7-8.9 10.4s4 10.4 8.8 10.4c3.5 0 6.5-2.4 8-5.8.3-.7-.1-1.5-.8-1.8l-3.6-1.5c-1-.4-1-1.8 0-2.2l3.7-1.6Zm20.8 2.4c0-5.7 4-10.4 8.8-10.4 3.7 0 7 2.7 8.2 6.5.3.7-.1 1.4-.8 1.7l-3 1.3c-1 .4-1 1.8 0 2.2l2.9 1.2c.7.3 1 1 .8 1.8-1.4 3.6-4.5 6.1-8 6.1-5 0-8.9-4.7-8.9-10.4Z",
    "evenodd",
    "M105 172c-15 0-20.6-8-18.6-13.6 1.4-4.1 6-6.4 10.4-5a35 35 0 0 0 8.2 1.6c2.3 0 6.3-1 8.2-1.6 4.3-1.4 9 .9 10.4 5 2 5.5-3.6 13.6-18.6 13.6Z",
    "#FFDFE7",
    "2.75",
    "M98.7 161.4h1.3l1.7.4 1 .3.8.2 1.5.2 1.5-.2.9-.2.9-.3a21.3 21.3 0 0 1 1.8-.3l1.2-.1c2.2.3 3.6 1.3 4.4 2.6a8 8 0 0 1 .7 5.2 11.1 11.1 0 0 1-11.4 9.4 11.1 11.1 0 0 1-11.4-9.4c-.4-2-.1-3.8.7-5.2.8-1.3 2.2-2.3 4.4-2.6Z",
    "M106 163.8v7a1 1 0 0 1-2 0v-7l1 .2 1-.2Z"
),
             FaceVariants::WINK => format!(
    "<path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" fill-opacity=\"{}\" d=\"{}\"/> \
     <path class=\"faceFillColor\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"{}\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"{}\" d=\"{}\"/>",
    "3",
    "M91 159s4.3 6 14 6 14-6 14-6",
    "2.5",
    "M89 159c.8-.4 1.5-1 2-2m30 2c-.8-.4-1.5-1-2-2",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "evenodd",
    "M94.1 139c.7-.4 1-1.1.8-1.8-1.4-3.7-4.5-6.2-8-6.2-5 0-8.9 4.7-8.9 10.4s4 10.4 8.8 10.4c3.5 0 6.5-2.4 8-5.8.3-.7-.1-1.5-.8-1.8l-3.6-1.5c-1-.4-1-1.8 0-2.2l3.7-1.6Z",
    "4",
    "M130 142.4s-2-2-6.5-2-6.5 2-6.5 2",
    "4",
    "M128.8 136.5s-2.7-1-6.7 1-5 4.6-5 4.6"
)
              _ => crate::face2::get_face_variant(face_variant),
        }
    }

    fn get_style_tag(face_color: FaceColors, skin_color: crate::helpers::SkinColors) -> ByteArray {
        let stroke_color = match face_color {
            FaceColors::GOLD => crate::lens_colors::dark_gold(),
            FaceColors::NORMAL => crate::lens_colors::black(),
        };
        let fill_color = stroke_color.clone();
        format!(
            r#"<style>
                .faceStrokeColor {{ stroke: {}; }}
                .faceFillColor {{ fill: {}; }}
                .skinColorBase {{ fill: {}; }}
                .skinColorLight {{ fill: {}; }}
                .skinColorDark {{ fill: {}; }}
                .mouthOverlay {{ fill: {}; }}
            </style>"#,
            stroke_color,
            fill_color,
            get_base_color(skin_color),
            get_light_color(skin_color),
            get_dark_color(skin_color),
            stroke_color
        )
    }

    fn get_base_color(color: crate::helpers::SkinColors) -> ByteArray {
        match color {
            crate::helpers::SkinColors::GREEN => crate::lens_colors::base_green(),
            crate::helpers::SkinColors::PINK => crate::lens_colors::base_pink(),
            crate::helpers::SkinColors::PURPLE => crate::lens_colors::base_purple(),
            crate::helpers::SkinColors::BLUE => crate::lens_colors::base_blue(),
            crate::helpers::SkinColors::GOLD => crate::lens_colors::base_gold(),
        }
    }

    fn get_light_color(color: crate::helpers::SkinColors) -> ByteArray {
        match color {
            crate::helpers::SkinColors::GREEN => crate::lens_colors::light_green(),
            crate::helpers::SkinColors::PINK => crate::lens_colors::light_pink(),
            crate::helpers::SkinColors::PURPLE => crate::lens_colors::light_purple(),
            crate::helpers::SkinColors::BLUE => crate::lens_colors::light_blue(),
            crate::helpers::SkinColors::GOLD => crate::lens_colors::light_gold(),
        }
    }

    fn get_dark_color(color: crate::helpers::SkinColors) -> ByteArray {
        match color {
            crate::helpers::SkinColors::GREEN => crate::lens_colors::dark_green(),
            crate::helpers::SkinColors::PINK => crate::lens_colors::dark_pink(),
            crate::helpers::SkinColors::PURPLE => crate::lens_colors::dark_purple(),
            crate::helpers::SkinColors::BLUE => crate::lens_colors::dark_blue(),
            crate::helpers::SkinColors::GOLD => crate::lens_colors::dark_gold(),
        }
    }
}

pub mod face2 {
    use karst::svgs::profile::face::FaceVariants;
    pub fn get_face_variant(face_variant: FaceVariants) -> ByteArray {
        match face_variant {
            FaceVariants::WOW_TONGUE =>format!(
    "<path class=\"faceFillColor\" fill-opacity=\"{}\" d=\"{}\"/> \
     <ellipse class=\"faceFillColor\" cx=\"{}\" cy=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <path fill=\"#fff\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <ellipse class=\"faceFillColor\" cx=\"{}\" cy=\"{}\" rx=\"{}\" ry=\"{}\" transform=\"{}\"/> \
     <path fill=\"#fff\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" fill=\"#FFDFE7\" stroke-width=\"{}\" d=\"{}\"/> \
     <path fill=\"#F5C8D4\" d=\"{}\"/>",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "86.825",
    "140.298",
    "9.825",
    "11.298",
    "evenodd",
    "M88.9 133.3a.6.6 0 0 1 1.1 0l1.2 2.7a.6.6 0 0 0 .3.4l1.4.6a.6.6 0 0 1 0 1.2l-1.4.7a.6.6 0 0 0-.3.3L90 142a.6.6 0 0 1-1.1 0l-1.2-2.7a.6.6 0 0 0-.3-.3l-1.4-.7a.6.6 0 0 1 0-1.2l1.4-.6a.6.6 0 0 0 .3-.4l1.2-2.7ZM84 141a.4.4 0 0 1 .7 0l.7 1.8a.4.4 0 0 0 .2.2l1 .4c.3.2.3.6 0 .8l-1 .4a.4.4 0 0 0-.2.2l-.7 1.8a.4.4 0 0 1-.7 0l-.8-1.8a.4.4 0 0 0-.2-.2l-1-.4a.4.4 0 0 1 0-.8l1-.4a.4.4 0 0 0 .2-.2l.8-1.8Zm-3.3-4.8a.4.4 0 0 1 .8 0l.2.6.2.3h.2a.4.4 0 0 1 0 .8H82a.4.4 0 0 0-.2.3l-.2.6a.4.4 0 0 1-.8 0l-.2-.6a.4.4 0 0 0-.2-.2l-.2-.1a.4.4 0 0 1 0-.8h.2a.4.4 0 0 0 .2-.3l.2-.6Z",
    "9.825",
    "11.298",
    "-1 0 0 1 133 129",
    "evenodd",
    "M121.1 133.3a.6.6 0 0 0-1.1 0l-1.2 2.7a.6.6 0 0 1-.3.4l-1.4.6a.6.6 0 0 0 0 1.2l1.4.7a.6.6 0 0 1 .3.3l1.2 2.7a.6.6 0 0 0 1.1 0l1.2-2.7a.6.6 0 0 1 .3-.3l1.4-.7a.6.6 0 0 0 0-1.2l-1.4-.6a.6.6 0 0 1-.3-.4l-1.2-2.7Zm4.8 7.6a.4.4 0 0 0-.7 0l-.7 1.8a.4.4 0 0 1-.2.2l-1 .4a.4.4 0 0 0 0 .8l1 .4a.4.4 0 0 1 .2.2l.7 1.8c.1.3.6.3.7 0l.8-1.8a.4.4 0 0 1 .2-.2l1-.4a.4.4 0 0 0 0-.8l-1-.4a.4.4 0 0 1-.2-.2l-.8-1.8Zm3.3-4.8a.4.4 0 0 0-.8 0l-.2.6a.4.4 0 0 1-.2.3h-.2a.4.4 0 0 0 0 .8h.2a.4.4 0 0 1 .2.3l.2.6c.2.3.6.3.8 0l.2-.6a.4.4 0 0 1 .2-.2l.2-.1a.4.4 0 0 0 0-.8h-.2a.4.4 0 0 1-.2-.3l-.2-.6Z",
    "105 172c-15 0-20.6-8-18.6-13.6 1.4-4.1 6-6.4 10.4-5a35 35 0 0 0 8.2 1.6c2.3 0 6.3-1 8.2-1.6 4.3-1.4 9 .9 10.4 5 2 5.5-3.6 13.6-18.6 13.6Z",
    "2.75",
    "M98.7 161.4h1.3l1.7.4 1 .3.8.2 1.5.2 1.5-.2.9-.2.9-.3a21.3 21.3 0 0 1 1.8-.3l1.2-.1c2.2.3 3.6 1.3 4.4 2.6a8 8 0 0 1 .7 5.2 11.1 11.1 0 0 1-11.4 9.4 11.1 11.1 0 0 1-11.4-9.4c-.4-2-.1-3.8.7-5.2.8-1.3 2.2-2.3 4.4-2.6Z",
    "M106 163.8v7a1 1 0 0 1-2 0v-7l1 .2 1-.2Z"
),
            FaceVariants::WOW =>format!(
    "<path class=\"faceFillColor\" fill-opacity=\"{}\" d=\"{}\"/> \
     <ellipse class=\"faceFillColor\" cx=\"{}\" cy=\"{}\" rx=\"{}\" ry=\"{}\"/> \
     <path fill=\"#fff\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <ellipse class=\"faceFillColor\" cx=\"{}\" cy=\"{}\" rx=\"{}\" ry=\"{}\" transform=\"{}\"/> \
     <path fill=\"#fff\" fill-rule=\"{}\" d=\"{}\" clip-rule=\"{}\"/> \
     <path class=\"faceFillColor\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" fill=\"#FFDFE7\" stroke-width=\"{}\" d=\"{}\"/> \
     <path fill=\"#F5C8D4\" d=\"{}\"/> \
     <path fill=\"#fff\" d=\"{}\"/> \
     <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"{}\" d=\"{}\"/>",
    ".12",
    "M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z",
    "86.825",
    "140.298",
    "9.825",
    "11.298",
    "evenodd",
    "M88.9 133.3a.6.6 0 0 1 1.1 0l1.2 2.7a.6.6 0 0 0 .3.4l1.4.6a.6.6 0 0 1 0 1.2l-1.4.7a.6.6 0 0 0-.3.3L90 142a.6.6 0 0 1-1.1 0l-1.2-2.7a.6.6 0 0 0-.3-.3l-1.4-.7a.6.6 0 0 1 0-1.2l1.4-.6a.6.6 0 0 0 .3-.4l1.2-2.7ZM84 141a.4.4 0 0 1 .7 0l.7 1.8a.4.4 0 0 0 .2.2l1 .4c.3.2.3.6 0 .8l-1 .4a.4.4 0 0 0-.2.2l-.7 1.8a.4.4 0 0 1-.7 0l-.8-1.8a.4.4 0 0 0-.2-.2l-1-.4a.4.4 0 0 1 0-.8l1-.4a.4.4 0 0 0 .2-.2l.8-1.8Zm-3.3-4.8a.4.4 0 0 1 .8 0l.2.6.2.3h.2a.4.4 0 0 1 0 .8H82a.4.4 0 0 0-.2.3l-.2.6a.4.4 0 0 1-.8 0l-.2-.6a.4.4 0 0 0-.2-.2l-.2-.1a.4.4 0 0 1 0-.8h.2a.4.4 0 0 0 .2-.3l.2-.6Z",
    "9.825",
    "11.298",
    "-1 0 0 1 133 129",
    "evenodd",
    "M121.1 133.3a.6.6 0 0 0-1.1 0l-1.2 2.7a.6.6 0 0 1-.3.4l-1.4.6a.6.6 0 0 0 0 1.2l1.4.7a.6.6 0 0 1 .3.3l1.2 2.7a.6.6 0 0 0 1.1 0l1.2-2.7a.6.6 0 0 1 .3-.3l1.4-.7a.6.6 0 0 0 0-1.2l-1.4-.6a.6.6 0 0 1-.3-.4l-1.2-2.7Zm4.8 7.6a.4.4 0 0 0-.7 0l-.7 1.8a.4.4 0 0 1-.2.2l-1 .4a.4.4 0 0 0 0 .8l1 .4a.4.4 0 0 1 .2.2l.7 1.8c.1.3.6.3.7 0l.8-1.8a.4.4 0 0 1 .2-.2l1-.4a.4.4 0 0 0 0-.8l-1-.4a.4.4 0 0 1-.2-.2l-.8-1.8Zm3.3-4.8a.4.4 0 0 0-.8 0l-.2.6a.4.4 0 0 1-.2.3h-.2a.4.4 0 0 0 0 .8h.2a.4.4 0 0 1 .2.3l.2.6c.2.3.6.3.8 0l.2-.6a.4.4 0 0 1 .2-.2l.2-.1a.4.4 0 0 0 0-.8h-.2a.4.4 0 0 1-.2-.3l-.2-.6Z",
    "98 154.6h14v1.9c0 1.2-1 2.1-2.1 2.1H100a2.1 2.1 0 0 1-2.1-2.1v-1.9Z",
    "3.176",
    "M114 160c0 3-4 4.2-9 4.2s-9-1.2-9-4.1c0-3 4-6.5 9-6.5s9 3.6 9 6.5Z"
),
            FaceVariants::BABY => format!(
    "<path fill=\"#fff\" d=\"M113 161.9c1.9 2 3 4.6 3 7.6a11 11 0 0 1-22 .1v-.1a11 11 0 0 1 11-11c3.2 0 6 1.3 8 3.4Zm-2.3 7.6c0-1-.2-2-.6-2.8-1-1.9-3-3.1-5.1-3.1a5.8 5.8 0 0 0-5.7 5.9c0 3.2 2.5 5.8 5.7 5.8s5.7-2.6 5.7-5.8Z\"/> \
    <path class=\"skinColorDark\" d=\"M109.6 167a8.8 8.8 0 0 1-9.3 0l-.5-.1c1-2 3-3.3 5.2-3.3 2.3 0 4 1.2 5 3l-.4.3ZM97 161.9l-.2-1.8A8.2 8.2 0 1 1 113 162a11 11 0 0 0-16 0Z\"/> \
    <path class=\"skinColorLight\" d=\"M96.8 160.1c0 .6 0 1.2.2 1.8a11 11 0 0 0-3 7.7h-1a14.8 14.8 0 0 1-7.3-8.5c-1-3.6-.4-7.9 2-10.8a14 14 0 0 1 8.5-4.4c3.2-.6 5-.7 8.8-.7 3.8 0 5.6 0 8.8.6 3.2.6 6.3 2 8.4 4.4 2.5 3 3.2 7.2 2 10.9a14.8 14.8 0 0 1-7.2 8.5h-1v-.1c0-3-1.1-5.6-3-7.6l.2-1.8a8.2 8.2 0 1 0-16.4 0Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M109.6 166a8.8 8.8 0 0 1-9.3 0\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2.5\" d=\"m97 161.9-.2-1.8A8.2 8.2 0 1 1 113 162\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M94 169.6v-.1a11 11 0 0 1 11-11 11 11 0 0 1 11 11v0a11 11 0 0 1-22 .1Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M110 166.7c.5.8.7 1.8.7 2.8 0 3.2-2.5 5.8-5.7 5.8a5.8 5.8 0 0 1-5.7-5.8 5.8 5.8 0 0 1 5.7-5.9c2.3 0 4 1.2 5 3Zm-17 3a14.8 14.8 0 0 1-7.3-8.6c-1-3.6-.4-7.9 2-10.8a14 14 0 0 1 8.5-4.4c3.2-.6 5-.7 8.8-.7\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M101.2 172.7c1.2.7 6 .6 8 0\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M117 169.6a15 15 0 0 0 7.3-8.5c1-3.7.4-8-2-10.9a14 14 0 0 0-8.5-4.4 48 48 0 0 0-8.8-.6\"/> \
    <path class=\"skinColorLight\" d=\"M99.5 157.6h11v7.9h-11z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2.5\" d=\"M98.7 161.6a4 4 0 0 1 4-4h4.6a4 4 0 0 1 4 4v0a4 4 0 0 1-4 4h-4.6a4 4 0 0 1-4-4v0Z\"/> \
    <circle class=\"faceFillColor\" cx=\"87.3\" cy=\"135.5\" r=\"4.7\"/> \
    <circle class=\"faceFillColor\" cx=\"122.7\" cy=\"135.5\" r=\"4.7\"/> \
    <path fill=\"#fff\" fill-opacity=\".5\" d=\"M78 158.2c-.7 3-4.6 4.6-8.8 3.7-4.1-1-7-4-6.3-7 .7-3 4.6-4.7 8.7-3.7 4.2.9 7 4 6.4 7Zm54 0c.7 3 4.6 4.6 8.7 3.7 4.2-1 7-4 6.3-7-.6-3-4.5-4.7-8.7-3.7-4.1.9-7 4-6.3 7Z\"/>"
),
            
            FaceVariants::KAWAII => format!(
    "<path class=\"faceFillColor\" d=\"M114.3 138.3c1.8 0 3.3 2 3.3 4.6 0 2.6-1.5 4.6-3.3 4.6-1.8 0-3.3-2-3.3-4.6 0-2.5 1.5-4.6 3.3-4.6Zm-18.5 0c1.8 0 3.2 2 3.2 4.6 0 2.6-1.4 4.6-3.2 4.6-1.9 0-3.3-2-3.3-4.6 0-2.5 1.4-4.6 3.3-4.6Z\"/> \
    <path fill=\"#fff\" d=\"M136.9 139.5c2 7.4-.4 15-7.2 19.3-7.5 4.7-20.2 4.5-24.6-3.8h-.1c-4.4 8.3-17.1 8.5-24.6 3.8a17 17 0 0 1-7.2-19.3 17 17 0 0 1 15-13c8-1 16.8 4.7 16.8 11.7 0-7 9-12.7 16.8-11.7a17 17 0 0 1 15 13Zm-19.3 3.4c0-2.5-1.5-4.6-3.3-4.6-1.8 0-3.3 2-3.3 4.6 0 2.6 1.5 4.6 3.3 4.6 1.8 0 3.3-2 3.3-4.6ZM99 143c0-2.5-1.4-4.6-3.2-4.6-1.9 0-3.3 2-3.3 4.6 0 2.6 1.4 4.6 3.3 4.6 1.8 0 3.2-2 3.2-4.6Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105 138.1c0-7-9-12.6-16.8-11.7a17 17 0 0 0-15 13c-2 7.5.3 15 7.1 19.3 7.5 4.8 20.2 4.6 24.6-3.8\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.8\" d=\"M92.4 142.9c0-2.6 1.5-4.6 3.3-4.6 1.8 0 3.3 2 3.3 4.6 0 2.5-1.5 4.6-3.3 4.6-1.8 0-3.3-2-3.3-4.6Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105 138.1c0-7 8.9-12.6 16.8-11.7a17 17 0 0 1 15 13c2 7.5-.4 15-7.1 19.3-7.5 4.8-20.2 4.6-24.6-3.8\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.8\" d=\"M117.6 142.9c0-2.6-1.5-4.6-3.3-4.6-1.8 0-3.3 2-3.3 4.6 0 2.5 1.5 4.6 3.3 4.6 1.8 0 3.3-2 3.3-4.6Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"2.5\" d=\"m87.9 122 .5 4m-8.7-.6 2 2.7m15.2-3.8-1.6 3m26.8-5.3-.5 4m8.8-.6-2 2.7m-15.2-3.8 1.6 3\"/> \
    <path fill=\"#fff\" fill-opacity=\".5\" d=\"M80 167.2c-.7 3-4.6 4.6-8.7 3.7-4.2-1-7-4-6.4-7 .7-3 4.6-4.7 8.8-3.7 4.1.9 7 4 6.3 7Zm50 0c.7 3 4.6 4.6 8.7 3.7 4.2-1 7-4 6.4-7-.7-3-4.6-4.7-8.8-3.7-4.1.9-7 4-6.3 7Z\"/>"
),
            FaceVariants::PIXIE => format!(
    "<path fill=\"#fff\" fill-opacity=\".3\" d=\"M105 121.4c-6.4 0-14.3-4-21-4.3-6.6-.4-13.5.9-19.1 4.6a29.3 29.3 0 0 0-11 29.8 39.8 39.8 0 0 0 19.8 25.7 59.8 59.8 0 0 0 30.5 7.8\"/> \
    <path fill=\"#fff\" fill-opacity=\".3\" d=\"M105 121.4c7 0 13.4-4 20-4.3 6.7-.4 13.6.9 19.2 4.6a29.3 29.3 0 0 1 11 29.8 39.8 39.8 0 0 1-19.8 25.7 62.1 62.1 0 0 1-31.2 7.8\"/> \
    <path class=\"faceStrokeColor\" stroke-width=\"2.8\" d=\"M105 121.4c-6.4 0-14.3-4-21-4.3-6.6-.4-13.5.9-19.1 4.6a29.3 29.3 0 0 0-11 29.8 39.8 39.8 0 0 0 19.8 25.7 59.8 59.8 0 0 0 30.5 7.8\"/> \
    <path class=\"faceStrokeColor\" stroke-width=\"2.8\" d=\"M105 121.4c7 0 13.4-4 20-4.3 6.7-.4 13.6.9 19.2 4.6a29.3 29.3 0 0 1 11 29.8 39.8 39.8 0 0 1-19.8 25.7 62.1 62.1 0 0 1-31.2 7.8\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105 121.4c-6.4 0-14.3-4-21-4.3-6.6-.4-13.5.9-19.1 4.6a29.3 29.3 0 0 0-11 29.8 39.8 39.8 0 0 0 19.8 25.7 59.8 59.8 0 0 0 30.5 7.8\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105 121.4c7 0 13.4-4 20-4.3 6.7-.4 13.6.9 19.2 4.6a29.3 29.3 0 0 1 11 29.8 39.8 39.8 0 0 1-19.8 25.7 62.1 62.1 0 0 1-31.2 7.8\"/> \
    <path class=\"faceFillColor\" fill-opacity=\".5\" d=\"M71.9 158.7h2.2v2.2h-2.2zm0 2.2h2.2v2.2h-2.2zm-2.2 2.2h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2z\"/> \
    <path class=\"faceFillColor\" fill-opacity=\".5\" d=\"M74.1 163.1h2.2v2.2h-2.2zm-4.4-4.4h2.2v2.2h-2.2zm0 2.2h2.2v2.2h-2.2zm4.4 0h2.2v2.2h-2.2zm-6.6 0h2.2v2.2h-2.2zm6.6-2.2h2.2v2.2h-2.2zm2.2 2.2h2.2v2.2h-2.2zm58.1-2.2h2.2v2.2h-2.2zm0 2.2h2.2v2.2h-2.2zm-2.2 2.2h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2zm-4.4-4.4h2.2v2.2h-2.2zm0 2.2h2.2v2.2h-2.2zm4.4 0h2.2v2.2h-2.2zm-6.6 0h2.2v2.2H130zm6.6-2.2h2.2v2.2h-2.2zm2.2 2.2h2.2v2.2h-2.2z\"/> \
    <path class=\"faceFillColor\" d=\"M96 158.7h2.2v2.2H96zm2.2 0h2.2v2.2h-2.2zm2.2 2.2h2.2v2.2h-2.2z\"/> \
    <path class=\"faceFillColor\" d=\"M102.6 160.9h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2zm2.2 0h2.2v2.2H107zm2.2-2.2h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2zm-23-5.5h2.2v2.2h-2.2zm-2.2-11h2.2v2.2h-2.2zm-2.2 3.3h2.2v2.2H84zm0 2.2h2.2v2.2H84zm8.8 0H95v2.2h-2.2zm-8.8 2.2h2.2v2.2H84zm8.8 0H95v2.2h-2.2zm-6.6-5.5h6.6v3.3h-6.6z\"/> \
    <path class=\"faceFillColor\" d=\"M86.2 147.7h6.6v2.2h-6.6zm0 2.2h6.6v3.3h-6.6zm6.6-4.4H95v2.2h-2.2zm-4.4-3.3h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2zm-4.4 11h2.2v2.2h-2.2zm4.4 0h2.2v2.2h-2.2zm28.5 0h2.2v2.2h-2.2zm-2.2-11h2.2v2.2h-2.2zm-2.2 3.3h2.2v2.2h-2.2zm0 2.2h2.2v2.2h-2.2zm8.8 0h2.2v2.2h-2.2zm-8.8 2.2h2.2v2.2h-2.2zm8.8 0h2.2v2.2h-2.2zm-6.6-5.5h6.6v3.3h-6.6z\"/> \
    <path class=\"faceFillColor\" d=\"M116.9 147.7h6.6v2.2h-6.6zm0 2.2h6.6v3.3h-6.6zm6.6-4.4h2.2v2.2h-2.2zm-4.4-3.3h2.2v2.2h-2.2zm2.2 0h2.2v2.2h-2.2zm-4.4 11h2.2v2.2h-2.2zm4.4 0h2.2v2.2h-2.2z\"/>"
),
            FaceVariants::TODDLER => format!(
    "<path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3\" d=\"M93 154.5s3.7 5.2 12 5.2 12-5.2 12-5.2\"/> \
    <circle class=\"faceFillColor\" cx=\"87.6\" cy=\"142.4\" r=\"4.6\"/> \
    <circle class=\"faceFillColor\" cx=\"122.4\" cy=\"142.4\" r=\"4.6\"/> \
    <path fill=\"#fff\" fill-opacity=\".5\" d=\"M78 156.2c-.7 3-4.6 4.6-8.8 3.7-4.1-1-7-4-6.3-7 .7-3 4.6-4.7 8.7-3.7 4.2.9 7 4 6.4 7Zm54 0c.7 3 4.6 4.6 8.7 3.7 4.2-1 7-4 6.3-7-.6-3-4.5-4.7-8.7-3.7-4.1.9-7 4-6.3 7Z\"/>"
),
            FaceVariants::VAMP => format!(
    "<path fill=\"#fff\" fill-opacity=\".5\" d=\"M138.7 137.2c-.7 3 2 6.2 6.2 7.2 4.1 1 8-.6 8.8-3.5.7-3-2.1-6.2-6.2-7.2-4.2-1-8.1.6-8.8 3.5Zm-67.4 0c.7 3-2 6.2-6.2 7.2-4.1 1-8-.6-8.8-3.5-.7-3 2.1-6.2 6.2-7.2 4.2-1 8.1.6 8.8 3.5Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3.5\" d=\"M77 133s2.5-4.2 8.7-4.5A11 11 0 0 1 95 132m38 1s-2.5-4.2-8.7-4.5a11 11 0 0 0-9.3 3.6\"/> \
    <path class=\"skinColorBase\" d=\"M105.4 142.4c-4.6 0-10.1-2.2-14.8-2.4-4.7-.2-9.6.5-13.5 2.6a14.7 14.7 0 0 0-7.7 16.5c1.6 6.1 7.1 11.3 13.9 14.3 6.8 3 13.7 4.3 21.5 4.3\"/> \
    <path class=\"skinColorBase\" d=\"M105.4 142.4c4.8 0 9.3-2.2 14-2.4 4.7-.2 9.6.5 13.5 2.6a14.7 14.7 0 0 1 7.7 16.5c-1.6 6.1-7.1 11.3-13.9 14.3a54 54 0 0 1-22 4.3\"/> \
    <path class=\"mouthOverlay\" fill-opacity=\".6\" d=\"M105.4 142.4c-4.6 0-10.1-2.2-14.8-2.4-4.7-.2-9.6.5-13.5 2.6a14.7 14.7 0 0 0-7.7 16.5c1.6 6.1 7.1 11.3 13.9 14.3 6.8 3 13.7 4.3 21.5 4.3\"/> \
    <path class=\"mouthOverlay\" fill-opacity=\".6\" d=\"M105.4 142.4c4.8 0 9.3-2.2 14-2.4 4.7-.2 9.6.5 13.5 2.6a14.7 14.7 0 0 1 7.7 16.5c-1.6 6.1-7.1 11.3-13.9 14.3a54 54 0 0 1-22 4.3\"/> \
    <path fill=\"#fff\" class=\"faceStrokeColor\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"m79 141.9 8.4-2.2s12.9 2.2 18 2.2 18.5-2.2 18.5-2.2l7.1 2.2a7 7 0 0 1 2 5.9c-.5 1.7-1 3.4-2 5l-1 1.6a1.8 1.8 0 0 1-3.2 0l-2.9-5c-5.8.3-13.2.6-18.9.6-5.7 0-13.1-.3-19-.6l-2.8 5a1.8 1.8 0 0 1-3.2 0l-1-1.7c-1-1.5-1.5-3.2-1.9-5A7 7 0 0 1 79 142Z\"/> \
    <path fill=\"#FFDFE7\" class=\"faceStrokeColor\" stroke-width=\"2\" d=\"M127 172.7c0 1.9-9.9 4.1-22 4.1a64 64 0 0 1-22-4c0-3.7 9.9-9 22-9s22 5.3 22 9Z\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105.4 142.4c-4.6 0-10.1-2.2-14.8-2.4-4.7-.2-9.6.5-13.5 2.6a14.7 14.7 0 0 0-7.7 16.5c1.6 6.1 7.1 11.3 13.9 14.3 6.8 3 13.7 4.3 21.5 4.3\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105.4 142.4c4.8 0 9.3-2.2 14-2.4 4.7-.2 9.6.5 13.5 2.6a14.7 14.7 0 0 1 7.7 16.5c-1.6 6.1-7.1 11.3-13.9 14.3a54 54 0 0 1-22 4.3\"/> \
    <path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-opacity=\".1\" stroke-width=\"2\" d=\"M105 163.7v6.3\"/>"
),
             _ => panic!("Invalid face variant!"),
        }
    }
}
