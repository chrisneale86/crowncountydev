Config = {}

Config.colors = {
    LIGHT_BLUE = 'BLIP_MODIFIER_MP_COLOR_1',
    DARK_RED = 'BLIP_MODIFIER_MP_COLOR_2',
    PURPLE = 'BLIP_MODIFIER_MP_COLOR_3',
    ORANGE = 'BLIP_MODIFIER_MP_COLOR_4',
    TEAL = 'BLIP_MODIFIER_MP_COLOR_5',
    LIGHT_YELLOW = 'BLIP_MODIFIER_MP_COLOR_6',
    PINK = 'BLIP_MODIFIER_MP_COLOR_7',
    GREEN = 'BLIP_MODIFIER_MP_COLOR_8',
    DARK_TEAL = 'BLIP_MODIFIER_MP_COLOR_9',
    RED = 'BLIP_MODIFIER_MP_COLOR_10',
    LIGHT_GREEN = 'BLIP_MODIFIER_MP_COLOR_11',
    TEAL2 = 'BLIP_MODIFIER_MP_COLOR_12',
    BLUE = 'BLIP_MODIFIER_MP_COLOR_13',
    DARK_PUPLE = 'BLIP_MODIFIER_MP_COLOR_14',
    DARK_PINK = 'BLIP_MODIFIER_MP_COLOR_15',
    DARK_DARK_RED = 'BLIP_MODIFIER_MP_COLOR_16',
    GRAY = 'BLIP_MODIFIER_MP_COLOR_17',
    PINKISH = 'BLIP_MODIFIER_MP_COLOR_18',
    YELLOW_GREEN = 'BLIP_MODIFIER_MP_COLOR_19',
    DARK_GREEN = 'BLIP_MODIFIER_MP_COLOR_20',
    BRIGHT_BLUE = 'BLIP_MODIFIER_MP_COLOR_21',
    BRIGHT_PURPLE = 'BLIP_MODIFIER_MP_COLOR_22',
    YELLOW_ORANGE = 'BLIP_MODIFIER_MP_COLOR_23',
    BLUE2 = 'BLIP_MODIFIER_MP_COLOR_24',
    TEAL3 = 'BLIP_MODIFIER_MP_COLOR_25',
    TAN = 'BLIP_MODIFIER_MP_COLOR_26',
    OFF_WHITE = 'BLIP_MODIFIER_MP_COLOR_27',
    LIGHT_YELLOW2 = 'BLIP_MODIFIER_MP_COLOR_28',
    LIGHT_PINK = 'BLIP_MODIFIER_MP_COLOR_29',
    LIGHT_RED = 'BLIP_MODIFIER_MP_COLOR_30',
    LIGHT_YELLOW3 = 'BLIP_MODIFIER_MP_COLOR_31',
    WHITE = 'BLIP_MODIFIER_MP_COLOR_32'
}

Config.BlipCategories = {
    Processing = {
        blips = {
            --{ name = "Weed Processing",   sprite = -426139257, x = 2309.746, y = -330.398, z = 41.949, color = Config.colors.ORANGE, },
            --{ name = "Shroom Processing", sprite = -426139257, x = 1782.461, y = -91.343,  z = 56.866, color = Config.colors.ORANGE },
        },
        restrictedJobs = { "EXAMPLE" }
    },
    Mining = {
        blips = {
            { name = "Wilson & Co", sprite = 2061546582, x = 758.399,   y = -444.276,  z = 80.248,  color = Config.colors.WHITE },
            { name = "for sale",    sprite = 2061546582, x = -5965.0000, y = -3208.3074,    z = -21.5109, color = Config.colors.WHITE },       
        },
        restrictedJobs = {}
    },
    WashingAndPanning = {
        blips = {
            --{ name = "River", sprite = -1979146842, x = 2269.17,  y = 261.95,   z = 44.5,  color = Config.colors.BLUE },
            --{ name = "River", sprite = -1979146842, x = -70.54,   y = 1450.2,   z = 107.6, color = Config.colors.BLUE },
            --{ name = "River", sprite = -1979146842, x = -2145.41, y = -2056.21, z = 51.92, color = Config.colors.BLUE },
        },
        restrictedJobs = {}
    },
    Guarma = {
        blips = {
            --{ name = "Banana Trees",   sprite = -1103135225, x = 1475.287, y = -7265.589, z = 59.849, color = Config.colors.YELLOW_ORANGE },
            --{ name = "Sugarcanes",     sprite = -1103135225, x = 1420.372, y = -7035.311, z = 64.743, color = Config.colors.YELLOW_ORANGE },
            --{ name = "Juice Press",    sprite = 553094466,   x = 1508.374, y = -7095.844, z = 76.403, color = Config.colors.YELLOW_ORANGE },
            --{ name = "Rum Distillery", sprite = 1654787099,  x = 1487.802, y = -7153.743, z = 72.775, color = Config.colors.YELLOW_ORANGE },
            --{ name = "Rum Temp",       sprite = 1000514759,  x = 1478.215, y = -7160.60,  z = 72.775, color = Config.colors.YELLOW_ORANGE },
            --{ name = "Rum Collection", sprite = 1391579593,  x = 1488.601, y = -7156.81,  z = 72.730, color = Config.colors.YELLOW_ORANGE },
        },
        restrictedJobs = { "EXAMPLE" }
    },
    Illegal = {
        blips = {
            --{ name = "Clan Camp Shop", sprite = 2113496404, x = -5992.675, y = -3261.305, z = -21.364, color = Config.colors.WHITE },
        },
        restrictedJobs = { "EXAMPLE" }
    },
    Clinics = {
        blips = {
            --{ name = "Hospital", sprite = -1739686743, x = 2725.47,  y = -1233.17, z = 50.37,  color = Config.colors.YELLOW_GREEN },
        },
        restrictedJobs = {}
    },
    Mexico = {
        blips = {
            --{ name = "Docks", sprite = 2033397166, x = -4391.74, y = -4048.39, z = -24.79, color = Config.colors.YELLOW_GREEN },
        },
        restrictedJobs = {}
    },
    Undertaker = {
        blips = {
            --Rhodes
            --{ name = "Burial Site",    sprite = 2061284948,  x = 1276.90,    y = -1229.43,   z = 80.84,    color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = 1284.63,    y = -1213.64,   z = 82.17,    color = Config.colors.LIGHT_RED },
            --Saint Denis
            --{ name = "Burial Site",    sprite = 2061284948,  x = 2737.39,    y = -1084.97,   z = 47.15,    color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = 2719.59,    y = -1105.76,   z = 49.37,    color = Config.colors.LIGHT_RED },
            --Armadillo
            --{ name = "Burial Site",    sprite = 2061284948,  x = -3652.7553, y = -2580.7209, z = -13.6168, color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = -3618.559,  y = -2575.061,  z = -13.795,  color = Config.colors.LIGHT_RED },
            --Limpany
            --{ name = "Burial Site",    sprite = 2061284948,  x = -402.9163,  y = -157.9432,  z = 47.0603,  color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = -403.5358,  y = -147.5633,  z = 45.8404,  color = Config.colors.LIGHT_RED },
            --Valentine
            --{ name = "Burial Site",    sprite = 2061284948,  x = -238.22,    y = 820.13,     z = 123.89,   color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = -215.98,    y = 813.81,     z = 124.44,   color = Config.colors.LIGHT_RED },
            --Blackwater
            --{ name = "Burial Site",    sprite = 2061284948,  x = -993.35,    y = -1193.28,   z = 58.90,    color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = -979.61,    y = -1179.07,   z = 58.3,     color = Config.colors.LIGHT_RED },
            --Strawberry
            --{ name = "Burial Site",    sprite = 2061284948,  x = -1756.98,   y = -240.66,    z = 182.89,   color = Config.colors.LIGHT_RED },
            --{ name = "Body Prep Site", sprite = -1918326968, x = -1780.21,   y = -242.72,    z = 180.32,   color = Config.colors.LIGHT_RED },
        },
        restrictedJobs = {}
    },
    AmbushSpots = {
        blips = {
            --{name = "Ambush firstLocation", sprite = 1322310532, x = -1406.96, y = -965.50, z = 61.75, color = Config.colors.PURPLE},
            --{name = "Ambush secondlocation", sprite = 1322310532, x = -1370.55, y = 1471.54, z = 241.58, color = Config.colors.PURPLE},
            --{name = "Ambush thirdlocation", sprite = 1322310532, x = 356.13, y = 442.88, z = 111.37, color = Config.colors.PURPLE},
            --{name = "Ambush fourthlocation", sprite = 1322310532, x = 2163.16, y = -1329.416, z = 42.50, color = Config.colors.PURPLE},
            --{name = "Ambush 01", sprite = 1322310532, x = -3204.308, y = -2387.061, z = 20.041, color = Config.colors.PURPLE},
            --{name = "Ambush 02", sprite = 1322310532, x = -3241.848, y = -2606.578, z = 7.959, color = Config.colors.PURPLE},
            --{name = "Ambush 03", sprite = 1322310532, x = -3094.322, y = -3136.176, z = 1.913, color = Config.colors.PURPLE},
            --{name = "Ambush 04", sprite = 1322310532, x = -3676.327, y = -2611.607, z = -14.034, color = Config.colors.PURPLE},
            --{name = "Ambush 05", sprite = 1322310532, x = -3975.776, y = -3321.229, z = 26.084, color = Config.colors.PURPLE},
            --{name = "Ambush 06", sprite = 1322310532, x = -4009.473, y = -2666.337, z = -9.752, color = Config.colors.PURPLE},
            --{name = "Ambush 07", sprite = 1322310532, x = -4812.184, y = -2721.773, z = -14.158, color = Config.colors.PURPLE},
            --{name = "Ambush 08", sprite = 1322310532, x = -5302.898, y = -2933.721, z = 2.120, color = Config.colors.PURPLE},
            --{name = "Ambush 09", sprite = 1322310532, x = -4363.972, y = -3040.301, z = -11.264, color = Config.colors.PURPLE},
            --{name = "Ambush 10", sprite = 1322310532, x = -4800.880, y = -3333.831, z = 8.854, color = Config.colors.PURPLE},
        },
        restrictedJobs = {}
    }
}
