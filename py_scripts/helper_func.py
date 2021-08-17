def shorten_labels(s):
    return s.replace(
        "Superior",
        "Sup.",
    ).replace("Inferior", "Inf.").replace(
        "Middle",
        "Mid.",
    ).replace(
        "Temporale",
        "Tmp.",
    ).replace(
        "Temporal",
        "Tmp.",
    ).replace(
        "Occipital",
        "Occ.",
    ).replace(
        "Frontal",
        "Front.",
    ).replace(
        "Central",
        "Centr.",
    ).replace(
        "Parietal",
        "Pariet.",
    ).replace(
        ", anterior",
        " (ant)",
    ).replace(
        ", posterior",
        " (post)",
    ).replace(
        " division",
        "",
    ).replace(
        " pars",
        "",
    ).replace(
        " part",
        "",
    ).replace(
        ", temporooccipital",
        " (tmpocc)",
    ).replace(
        "Lateral",
        "Lat.",
    ).replace(
        ", superior",
        " (sup.)",
    ).replace(
        ", inferior",
        " (inf.)",
    ).replace(
        "(includes H1 and H2)",
        "(H1+H2)",
    ).replace(
        "Juxtapositional",
        "Juxtapos.",
    ).replace(
        " (formerly Supplementary Motor Cortex)",
        "",
    ).replace(
        "Parahippocampal",
        "Parahippoc.",
    )


