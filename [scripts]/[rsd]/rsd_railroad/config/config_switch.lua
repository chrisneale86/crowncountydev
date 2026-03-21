--[[

This configuration is ready for RSD extension, if you use other rails, remove the RSD extensions and integrate
the custom rails as well as the necessary switches (to find the different switches and configure them you have
tools explained in the ReadME)

]]


DATA_TRACK = {
    {name = "FREIGHT_GROUP", hash = -705539859}, --1
    {name = "TRAINS3", hash = 1499637393}, --2
    {name = "BRAITHWAITES2_TRACK_CONFIG", hash = -760570040}, --3
    {name = "TRAINS_OLD_WEST02", hash = -1763976500}, --4
    {name = "TRAINS_OLD_WEST03", hash = -1467515357}, --5
    {name = "TRAINS_NB1", hash = -1242669618}, --6
    {name = "TRAINS_INTERSECTION1_ANN", hash = -154412807}, --7
    {name = "TRAINS_OLD_WEST01", hash = 3306698568}, --8

    -- ADD HERE YOU RAILS EXTENSION (Snails/Spooni/RSD etc...)

    --SPOONI EXTENSION
    {name = "SPOONI01", hash = 1527650722}, --9
    {name = "SPOONI02", hash = -1940325321}, --10
    {name = "SPOONI03", hash = 1983893509}, --11
    {name = "SPOONI04", hash = 2750884723}, --12
}


DATA_SWITCH = {
    --====================================================
    --|                 FREIGHT GROUP                    | 
    --====================================================
        {
            enable = true,
            junction_index = 1, -- switch index
            track_group = 1, -- track group 1 = "FREIGHT_GROUP" see "DATA_TRACK"
            direction = {false, true}, -- left and right
            coords_switch = vector3(69.62, -375.17, 90.05), --coords of the switch
            coords_action = vector3(173.81, -416.17, 88.09), -- coords where the prompts appears
            range = 20.0, -- range to detect prompts
            name = {"Flatneck", "Valentine"}, -- name left and right
            heading = {46, 89}, --heading min, heading max
            default = true, --default at the start
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(-281.05249023438, -319.60998535156, 89.064910888672),
            coords_action = vector3(-311.42, -334.76, 88.44),
            range = 20.0,
            name = {"Valentine", "Rhodes"},
            heading = {260, 320},
            default = true,
        },
        {
            enable = true,
            junction_index = 3,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(-948.86, -635.76, 72.91),
            coords_action = vector3(-886.85, -626.22, 72.21),
            range = 50.0,
            name = {"Blackwater/Manzanita", "Riggs"},
            heading = {60, 140},
            default = true,
        },
        {
            enable = true,
            junction_index = 4,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(-1034.8, -619.88, 75.31),
            coords_action = vector3(-1069.48, -602.5, 79.23),
            range = 20.0,
            name = {"Flatneck", "Blackwater/Manzanita"},
            heading = {180, 260},
            default = true,
        },
        {
            enable = true,
            junction_index = 5,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(-1307.26, -291.26, 100.09),
            coords_action = vector3(-1288.37, -380.06, 99.96),
            range = 30.0,
            name = {"Monto's Rest", "Wallace"},
            heading = {0, 60},
            default = true,
        },
        {
            enable = true,
            junction_index = 6,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(-1375.64, -137.36, 100.02),
            coords_action = vector3(-1434.82, -64.87, 100.94),
            range = 30.0,
            name = {"Riggs", "Monto's Rest"},
            heading = {200, 260},
            default = true,
        },
        {
            enable = true,
            junction_index = 7,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(556.65, 1725.99, 186.96),
            coords_action = vector3(445.23, 1786.1, 187.69),
            range = 50.0,
            name = {"Annesburg", "Bacchus"},
            heading = {230, 300},
            default = true,
        },
        {
            enable = true,
            junction_index = 8,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(610.22, 1662.17, 186.54),
            coords_action = vector3(683.26, 1597.56, 188.74),
            range = 50.0,
            name = {"Bacchus", "Wallace"},
            heading = {10, 80},
            default = true,
        },
        --1 9 is 2260
        {
            enable = true,
            junction_index = 10,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(3032.64, 1482.22, 48.73),
            coords_action = vector3(3102.06, 1529.95, 56.68),
            range = 50.0,
            name = {"Annesburg (Station)", "Annesburg (Center)"},
            heading = {110, 160}, 
            default = true,
        },
        {
            enable = true,
            junction_index = 11,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(2873.65, 1199.61, 44.21),
            coords_action = vector3(2838.14, 1136.96, 45.94),
            range = 50.0,
            name = {"Annesburg (Center)", "Annesburg (Station)"},
            heading = {316, 360},
            default = true,
        },
        {
            enable = true,
            junction_index = 13,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(2659.79, -435.71, 42.55),
            coords_action = vector3(2657.42, -608.66, 41.83),
            range = 50.0,
            name = {"Emerald Ranch", "Annesburg"},
            heading = {340, 360},
            default = true,
        },
        {
            enable = true,
            junction_index = 15,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(2855.28, -1314.74, 45.1),
            coords_action = vector3(2897.53, -1245.54, 46.06),
            range = 30.0,
            name = {"Saint-Denis (Center)", "Saint-Denis (Station)"},
            heading = {130, 180},
            default = true,
        },
        {
            enable = true,
            junction_index = 16,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(2842.43, -1330.06, 45.16),
            coords_action = vector3(2865.26, -1302.77, 45.89),
            range = 30.0,
            name = {"Saint-Denis (Dock)", "Saint-Denis (Center)"},
            heading = {130, 150},
            default = true,
        },
        {
            enable = true,
            junction_index = 17,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(2765.4, -1421.54, 45.09),
            coords_action = vector3(2728.89, -1459.79, 45.91),
            range = 30.0,
            name = {"Saint-Denis (Center)", "Saint-Denis (Dock)"},
            heading = {290, 325},
            default = true,
        },
        {
            enable = true,
            junction_index = 18,
            track_group = 1,
            direction = {true, false},
            coords_switch = vector3(2588.54, -1482.19, 45.21),
            coords_action = vector3(2574.72, -1482.2, 46.07),
            range = 20.0,
            name = {"Saint-Denis (Station)", "Saint-Denis (Dock)"},
            heading = {250, 280},
            default = true,
        },
        {
            enable = true,
            junction_index = 19,
            track_group = 1,
            direction = {false, true},
            coords_switch = vector3(2520.46, -1482.19, 45.12),
            coords_action = vector3(2546.22, -1482.18, 45.95),
            range = 30.0,
            name = {"Rhodes", "Emerald Ranch"},
            heading = {70, 120},
            default = true,
        },
    
    --====================================================
    --|                     TRAINS3                      | 
    --====================================================
        {
            enable = true,
            junction_index = 1,
            track_group = 2,
            direction = {true, false},
            coords_switch = vector3(1692.86, 544.33, 97.75),
            coords_action = vector3(1764.85, 591.36, 106.11),
            range = 50.0,
            name = {"Emerald Ranch", "Oil Field"},
            heading = {60, 180},
            default = true,
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 2,
            direction = {false, true},
            coords_switch = vector3(1481.54, 648.33, 91.45),
            coords_action = vector3(1401.0, 706.41, 92.91),
            range = 80.0,
            name = {"Saint-Denis", "Emerald Ranch"},
            heading = {215, 270},
            default = true,
        },
        {
            enable = true,
            junction_index = 3,
            track_group = 2,
            direction = {true, false},
            coords_switch = vector3(613.96, 683.59, 114.51),
            coords_action = vector3(688.7, 709.23, 114.7),
            range = 50.0,
            name = {"Valentine", "Oil Field (Station)"},
            heading = {80, 150},
            default = true,
        },
        {
            enable = true,
            junction_index = 4,
            track_group = 2,
            direction = {false, true},
            coords_switch = vector3(357.96, 596.37, 114.83),
            coords_action = vector3(244.66, 532.43, 115.84),
            range = 50.0,
            name = {"Oil Field (Station)", "Emerald Ranch"},
            heading = {215, 292},
            default = true,
        },
        {
            enable = true,
            junction_index = 5,
            track_group = 2,
            direction = {true, false},
            coords_switch = vector3(31.4, -29.33, 102.48),
            coords_action = vector3(56.8, 57.0, 102.38),
            range = 50.0,
            name = {"Rhodes", "Flatneck"},
            heading = {160, 190},
            default = true,
        },
    --====================================================
    --|             BRAITHWAITES2_TRACK_CONFIG           | 
    --====================================================
        {
            enable = true,
            junction_index = 1,
            track_group = 3,
            direction = {true, false},
            coords_switch = vector3(1529.94, 467.53, 89.37),
            coords_action = vector3(1529.65, 452.76, 90.23),
            range = 20.0,
            name = {"Oil Field", "Saint-Denis"},
            heading = {350, 360},
            default = true,
        },
        {
            enable = true,
            junction_index = 5,
            track_group = 3,
            direction = {true, false},
            coords_switch = vector3(2464.55, -1475.74, 45.14),
            coords_action = vector3(2407.16, -1442.64, 45.99),
            range = 30.0,
            name = {"Saint-Denis (Station)", "Saint-Denis (Dock)"},
            heading = {200, 250},
            default = true,
        },
    --====================================================
    --|                 TRAINS_OLD_WEST02                | 
    --====================================================
        {
            enable = true,
            junction_index = 1,
            track_group = 4,
            direction = {true, false},
            coords_switch = vector3(-2214.41, -2519.54, 65.73),
            coords_action = vector3(-2276.73, -2504.69, 62.98),
            range = 50.0,
            name = {"MacFarlane", "Blackwater"},
            heading = {170, 300},
            default = true,
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 4,
            direction = {false, true},
            coords_switch = vector3(-2510.47, -2376.21, 60.8),
            coords_action = vector3(-2508.0, -2406.05, 60.24),
            range = 50.0,
            name = {"Armadillo", "Manzanita"},
            heading = {0, 60},
            default = true,
        },
        {
            enable = true,
            junction_index = 6,
            track_group = 4,
            direction = {false, true},
            coords_switch = vector3(-4848.95, -3086.33, -16.59),
            coords_action = vector3(-4754.4, -3106.15, -9.9),
            range = 50.0,
            name = {"Benedict Point", "Rathskeller Fork"},
            heading = {60, 100},
            default = true,
        },
    --====================================================
    --|                 TRAINS_OLD_WEST03                | 
    --====================================================
        {
            enable = true,
            junction_index = 0,
            track_group = 5,
            direction = {true, false},
            coords_switch = vector3(-4916.56, -3009.53, -19.18),
            coords_action = vector3(-4969.33, -2916.02, -13.37),
            range = 50.0,
            name = {"Mercer", "Benedict Point"},
            heading = {170, 234},
            default = true,
        },
        {
            enable = true,
            junction_index = 5,
            track_group = 5,
            direction = {false, true},
            coords_switch = vector3(-4951.81, -3083.8, -18.44),
            coords_action = vector3(-5023.36, -3110.43, -15.62),
            range = 50.0,
            name = {"Rathskeller Fork", "Mercer"},
            heading = {270, 310},
            default = true,
        },
    --====================================================
    --|                     TRAINS_NB1                   | 
    --====================================================
        {
            enable = true,
            junction_index = 1,
            track_group = 6,
            direction = {false, true},
            coords_switch = vector3(2748.47, -1434.33, 45.01),
            coords_action = vector3(2774.83, -1402.36, 46.13),
            range = 30.0,
            name = {"Saint-Denis (Center)", "Saint-Denis (Station)"},
            heading = {110, 150},
            default = true,
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 6,
            direction = {true, false},
            coords_switch = vector3(2654.2, -1477.18, 44.92),
            coords_action = vector3(2635.36, -1477.23, 45.82),
            range = 30.0,
            name = {"Saint-Denis (Station)", "Saint-Denis (Center)"},
            heading = {250, 285},
            default = true,
        },
        {
            enable = true,
            junction_index = 3,
            track_group = 6,
            direction = {true, false},
            coords_switch = vector3(2624.16, -1477.2, 45.15),
            coords_action = vector3(2635.36, -1477.23, 45.82),
            range = 30.0,
            name = {"Rhodes", "Emerald Ranch"},
            heading = {60, 100},
            default = true,
        },
    --====================================================
    --|              TRAINS_INTERSECTION1_ANN            | 
    --====================================================
    
        {
            enable = true,
            junction_index = 1,
            track_group = 7,
            direction = {true, false},
            coords_switch = vector3(2940.86, 1374.45, 43.08),
            coords_action = vector3(2964.43, 1411.35, 44.12),
            range = 30.0,
            name = {"Gauche", "Droite"},
            heading = {110, 160},
            default = true,
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 7,
            direction = {false, true},
            coords_switch = vector3(2885.57, 1227.62, 44.84),
            coords_action = vector3(2877.77, 1207.98, 44.94),
            range = 20.0,
            name = {"Gauche", "Droite"},
            heading = {310, 340},
            default = true,
        },
    --====================================================
    --|                 TRAINS_OLD_WEST01                | 
    --====================================================
        {
            auto = true, -- if it's auto, it switch automaticly with no blip
            enable = true,
            junction_index = 0, --FIX THIEVES LANDING SWITCH
            track_group = 8,
            direction = {true, true},
            coords_switch = vector3(-2175.79, -2533.91, 66.56),
            coords_action = vector3(-2138.95, -2550.25, 68.75),
            range = 50.0,
            name = {"MacFarlane", "MacFarlane"},
            heading = {20, 80},
            default = true,
        },
        {
            auto = true, -- if it's auto, it switch automaticly with no blip
            enable = true,
            junction_index = 1, --FIX THIEVES LANDING SWITCH
            track_group = 8,
            direction = {true, true},
            coords_switch = vector3(-2174.31, -2508.44, 65.8),
            coords_action = vector3(-2138.8, -2478.46, 65.13),
            range = 50.0,
            name = {"MacFarlane", "MacFarlane"},
            heading = {80, 140},
            default = true,
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 8,
            direction = {false, true},
            coords_switch = vector3(-1626.819946, -2329.879883, 44.330002),
            coords_action = vector3(-1650.79, -2442.92, 50.38),
            range = 50.0,
            name = {"MacFarlane", "Blackwater"},
            heading = {280, 360},
            default = true,
        },
    
    --====================================================
    --|                      SPOON01                     | 
    --====================================================
    
    
    --====================================================
    --|                      SPOON02                     | 
    --====================================================
        {
            enable = true,
            junction_index = 1,
            track_group = 10,
            direction = {true, false},
            coords_switch = vector3(-1007.940002, -714.250000, 63.669998),
            coords_action = vector3(-1008.15, -761.67, 60.65),
            range = 50.0,
            name = {"Riggs", "Flatneck"},
            heading = {340, 360},
            default = true,
        },
        {
            enable = true,
            junction_index = 2,
            track_group = 10,
            direction = {false, true},
            coords_switch = vector3(-1007.909973, -998.080017, 60.439999),
            coords_action = vector3(-1007.53, -928.49, 60.4),
            range = 50.0,
            name = {"Blackwater", "Manzanita"},
            heading = {150, 200},
            default = true,
        },
        {
            enable = true,
            junction_index = 3,
            track_group = 10,
            direction = {true, false},
            coords_switch = vector3(-948.880005, -1115.020020, 51.680000),
            coords_action = vector3(-898.76, -1168.95, 45.04),
            range = 50.0,
            name = {"Manzanita", "Riggs/Flatneck"},
            heading = {0, 60},
            default = true,
        },
    
    --====================================================
    --|                      SPOON03                     | 
    --====================================================
        {
            enable = true,
            junction_index = 1,
            track_group = 11,
            direction = {false, true},
            coords_switch = vector3(-1064.729980, -1088.329956, 60.919998),
            coords_action = vector3(-1091.93, -1098.28, 63.561),
            range = 50.0,
            name = {"Riggs/Flatneck", "Blackwater"},
            heading = {240, 320},
            default = true,
        },
    
    --====================================================
    --|                      SPOON04                     | 
    --====================================================
    
    }






--[[DATA_TRACK = {
    {name = "FREIGHT_GROUP", hash = -705539859}, --1
    {name = "TRAINS3", hash = 1499637393}, --2
    {name = "BRAITHWAITES2_TRACK_CONFIG", hash = -760570040}, --3
    {name = "TRAINS_OLD_WEST02", hash = -1763976500}, --4
    {name = "TRAINS_OLD_WEST03", hash = -1467515357}, --5
    {name = "TRAINS_NB1", hash = -1242669618}, --6
    {name = "TRAINS_INTERSECTION1_ANN", hash = -154412807}, --7
    {name = "TRAINS_OLD_WEST01", hash = 3306698568}, --8

    -- ADD HERE YOU RAILS EXTENSION (Snails/Spooni/RSD etc...)

    --RSD EXTENSION
    {name = "TRAINS_TRANS_ELIZABETH", hash = 1801729765}, --9
    {name = "JUNCTION_FREIGHT_ELIZABETH", hash = 1781374707}, --10
}



DATA_SWITCH = {
--====================================================
--|                 FREIGHT GROUP                    | 
--====================================================
    {
        enable = true, --to enbale the switch
        junction_index = 0, -- switch index
        track_group = 1, -- track group 1 = "FREIGHT_GROUP" see "DATA_TRACK"
        direction = {false, true}, -- left and right
        coords_switch = vector3(69.62, -375.17, 90.05), --coords of the switch
        coords_action = vector3(173.81, -416.17, 88.09), -- coords where the prompts appears
        range = 20.0, -- range to detect prompts
        name = {"Flatneck", "Valentine"}, -- name left and right
        heading = {46, 89}, --heading min, heading max
        default = true, --default at the start (left or right) // Even if it is not enabled you can choose a default direction
    },
    {
        enable = true,
        junction_index = 1,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(-278.09, -318.03, 89.02),
        coords_action = vector3(-311.22, -334.83, 88.44),
        range = 20.0,
        name = {"Valentine", "Rhodes"},
        heading = {260, 340},
        default = true,
    },
    {
        enable = true,
        junction_index = 2,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(-887.46, -626.63, 72.21),
        coords_action = vector3(-825.61, -595.96, 72.19),
        range = 50.0,
        name = {"Blackwater", "Riggs"},
        heading = {85, 130},
        default = true,
    },
    {
        enable = true,
        junction_index = 3,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(-1034.8, -619.88, 75.31),
        coords_action = vector3(-1069.48, -602.5, 79.23),
        range = 20.0,
        name = {"Flatneck", "Blackwater"},
        heading = {180, 260},
        default = true,
    },
    {
        enable = true,
        junction_index = 4,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(-1307.26, -291.26, 100.09),
        coords_action = vector3(-1288.37, -380.06, 99.96),
        range = 30.0,
        name = {"Monto's Rest", "Wallace"},
        heading = {0, 60},
        default = true,
    },
    {
        enable = true,
        junction_index = 5,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(-1375.64, -137.36, 100.02),
        coords_action = vector3(-1434.82, -64.87, 100.94),
        range = 30.0,
        name = {"Riggs", "Monto's Rest"},
        heading = {200, 260},
        default = true,
    },
    {
        enable = true,
        junction_index = 7,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(556.65, 1725.99, 186.96),
        coords_action = vector3(445.23, 1786.1, 187.69),
        range = 50.0,
        name = {"Annesburg", "Bacchus"},
        heading = {230, 300},
        default = true,
    },
    {
        enable = true,
        junction_index = 8,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(610.22, 1662.17, 186.54),
        coords_action = vector3(683.26, 1597.56, 188.74),
        range = 50.0,
        name = {"Bacchus", "Wallace"},
        heading = {10, 80},
        default = true,
    },
    {
        enable = true,
        junction_index = 10,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(3032.64, 1482.22, 48.73),
        coords_action = vector3(3102.06, 1529.95, 56.68),
        range = 50.0,
        name = {"Annesburg (Staiton)", "Annesburg (Center)"},
        heading = {110, 160}, 
        default = true,
    },
    {
        enable = true,
        junction_index = 11,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(2873.65, 1199.61, 44.21),
        coords_action = vector3(2838.14, 1136.96, 45.94),
        range = 50.0,
        name = {"Annesburg (Center)", "Annesburg (Station)"},
        heading = {316, 360},
        default = true,
    },
    {
        enable = true,
        junction_index = 13,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(2659.79, -435.71, 42.55),
        coords_action = vector3(2657.42, -608.66, 41.83),
        range = 50.0,
        name = {"Emerald Ranch", "Annesburg"},
        heading = {340, 360},
        default = true,
    },
    {
        enable = true,
        junction_index = 15,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(2855.28, -1314.74, 45.1),
        coords_action = vector3(2897.53, -1245.54, 46.06),
        range = 30.0,
        name = {"Saint-Denis (Center)", "Saint-Denis (Station)"},
        heading = {130, 180},
        default = true,
    },
    {
        enable = true,
        junction_index = 16,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(2842.43, -1330.06, 45.16),
        coords_action = vector3(2865.26, -1302.77, 45.89),
        range = 30.0,
        name = {"Saint-Denis (Port)", "Saint-Denis (Center)"},
        heading = {130, 150},
        default = true,
    },
    {
        enable = true,
        junction_index = 17,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(2765.4, -1421.54, 45.09),
        coords_action = vector3(2728.89, -1459.79, 45.91),
        range = 30.0,
        name = {"Saint-Denis (Center)", "Saint-Denis (Port)"},
        heading = {290, 325},
        default = true,
    },
    {
        enable = true,
        junction_index = 18,
        track_group = 1,
        direction = {true, false},
        coords_switch = vector3(2588.54, -1482.19, 45.21),
        coords_action = vector3(2574.72, -1482.2, 46.07),
        range = 20.0,
        name = {"Saint-Denis (Station)", "Saint-Denis (Port)"},
        heading = {250, 280},
        default = true,
    },
    {
        enable = true,
        junction_index = 19,
        track_group = 1,
        direction = {false, true},
        coords_switch = vector3(2520.46, -1482.19, 45.12),
        coords_action = vector3(2546.22, -1482.18, 45.95),
        range = 30.0,
        name = {"Rhodes", "Emerald Ranch"},
        heading = {70, 120},
        default = true,
    },

--====================================================
--|                     TRAINS3                      | 
--====================================================
    {
        enable = true,
        junction_index = 1,
        track_group = 2,
        direction = {true, false},
        coords_switch = vector3(1692.86, 544.33, 97.75),
        coords_action = vector3(1764.85, 591.36, 106.11),
        range = 50.0,
        name = {"Emerald Ranch", "Oil Field"},
        heading = {60, 180},
        default = true,
    },
    {
        enable = true,
        junction_index = 2,
        track_group = 2,
        direction = {false, true},
        coords_switch = vector3(1481.54, 648.33, 91.45),
        coords_action = vector3(1401.0, 706.41, 92.91),
        range = 80.0,
        name = {"Saint-Denis", "Emerald Ranch"},
        heading = {215, 270},
        default = true,
    },
    {
        enable = true,
        junction_index = 3,
        track_group = 2,
        direction = {true, false},
        coords_switch = vector3(613.96, 683.59, 114.51),
        coords_action = vector3(688.7, 709.23, 114.7),
        range = 50.0,
        name = {"Valentine", "Oil Field (Station)"},
        heading = {80, 150},
        default = true,
    },
    {
        enable = true,
        junction_index = 4,
        track_group = 2,
        direction = {false, true},
        coords_switch = vector3(357.96, 596.37, 114.83),
        coords_action = vector3(244.66, 532.43, 115.84),
        range = 50.0,
        name = {"Oil Field (Station)", "Emerald Ranch"},
        heading = {215, 292},
        default = true,
    },
    {
        enable = true,
        junction_index = 5,
        track_group = 2,
        direction = {true, false},
        coords_switch = vector3(31.4, -29.33, 102.48),
        coords_action = vector3(56.8, 57.0, 102.38),
        range = 50.0,
        name = {"Rhodes", "Flatneck"},
        heading = {160, 190},
        default = true,
    },
--====================================================
--|             BRAITHWAITES2_TRACK_CONFIG           | 
--====================================================
    {
        enable = true,
        junction_index = 1,
        track_group = 3,
        direction = {true, false},
        coords_switch = vector3(1529.94, 467.53, 89.37),
        coords_action = vector3(1529.65, 452.76, 90.23),
        range = 20.0,
        name = {"Oil Field", "Saint-Denis"},
        heading = {350, 360},
        default = true,
    },
    {
        enable = true,
        junction_index = 5,
        track_group = 3,
        direction = {true, false},
        coords_switch = vector3(2464.55, -1475.74, 45.14),
        coords_action = vector3(2407.16, -1442.64, 45.99),
        range = 30.0,
        name = {"Saint-Denis (Station)", "Saint-Denis (Port)"},
        heading = {200, 250},
        default = true,
    },
--====================================================
--|                 TRAINS_OLD_WEST02                | 
--====================================================
    {
        enable = true,
        junction_index = 1,
        track_group = 4,
        direction = {true, false},
        coords_switch = vector3(-2214.41, -2519.54, 65.73),
        coords_action = vector3(-2276.73, -2504.69, 62.98),
        range = 50.0,
        name = {"MacFarlane", "Blackwater"},
        heading = {170, 300},
        default = true,
    },
    {
        enable = true,
        junction_index = 5,
        track_group = 4,
        direction = {false, true},
        coords_switch = vector3(-4848.95, -3086.33, -16.59),
        coords_action = vector3(-4754.4, -3106.15, -9.9),
        range = 50.0,
        name = {"Benedict Point", "Rathskeller Fork"},
        heading = {60, 100},
        default = true,
    },
--====================================================
--|                 TRAINS_OLD_WEST03                | 
--====================================================
    {
        enable = true,
        junction_index = 0,
        track_group = 5,
        direction = {true, false},
        coords_switch = vector3(-4916.56, -3009.53, -19.18),
        coords_action = vector3(-4969.33, -2916.02, -13.37),
        range = 50.0,
        name = {"Mercer", "Benedict Point"},
        heading = {170, 234},
        default = true,
    },
    {
        enable = true,
        junction_index = 5,
        track_group = 5,
        direction = {false, true},
        coords_switch = vector3(-4951.81, -3083.8, -18.44),
        coords_action = vector3(-5023.36, -3110.43, -15.62),
        range = 50.0,
        name = {"Rathskeller Fork", "Mercer"},
        heading = {270, 310},
        default = true,
    },
--====================================================
--|                     TRAINS_NB1                   | 
--====================================================
    {
        enable = true,
        junction_index = 1,
        track_group = 6,
        direction = {false, true},
        coords_switch = vector3(2748.47, -1434.33, 45.01),
        coords_action = vector3(2774.83, -1402.36, 46.13),
        range = 30.0,
        name = {"Saint-Denis (Center)", "Saint-Denis (Station)"},
        heading = {110, 150},
        default = true,
    },
    {
        enable = true,
        junction_index = 2,
        track_group = 6,
        direction = {true, false},
        coords_switch = vector3(2654.2, -1477.18, 44.92),
        coords_action = vector3(2635.36, -1477.23, 45.82),
        range = 30.0,
        name = {"Saint-Denis (Station)", "Saint-Denis (Center)"},
        heading = {250, 285},
        default = true,
    },
    {
        enable = true,
        junction_index = 3,
        track_group = 6,
        direction = {true, false},
        coords_switch = vector3(2624.16, -1477.2, 45.15),
        coords_action = vector3(2635.36, -1477.23, 45.82),
        range = 30.0,
        name = {"Rhodes", "Emerald Ranch"},
        heading = {60, 100},
        default = true,
    },
--====================================================
--|              TRAINS_INTERSECTION1_ANN            | 
--====================================================

    {
        enable = true,
        junction_index = 1,
        track_group = 7,
        direction = {true, false},
        coords_switch = vector3(2940.86, 1374.45, 43.08),
        coords_action = vector3(2964.43, 1411.35, 44.12),
        range = 30.0,
        name = {"Left", "Right"},
        heading = {110, 160},
        default = true,
    },
    {
        enable = true,
        junction_index = 2,
        track_group = 7,
        direction = {false, true},
        coords_switch = vector3(2885.57, 1227.62, 44.84),
        coords_action = vector3(2877.77, 1207.98, 44.94),
        range = 20.0,
        name = {"Left", "Right"},
        heading = {310, 340},
        default = true,
    },
--====================================================
--|                 TRAINS_OLD_WEST01                | 
--====================================================
    {
        auto = true, -- if it's auto, it switch automaticly with no blip
        enable = true,-- let it true if it's automatic
        junction_index = 0, --FIX THIEVES LANDING SWITCH
        track_group = 8,
        direction = {true, true},
        coords_switch = vector3(-2175.79, -2533.91, 66.56),
        coords_action = vector3(-2138.95, -2550.25, 68.75),
        range = 50.0,
        name = {"MacFarlane", "MacFarlane"},
        heading = {20, 80},
        default = true,
    },
    {
        auto = true, -- if it's auto, it switch automaticly with no blip
        enable = true, -- let it true if it's automatic
        junction_index = 1, --FIX THIEVES LANDING SWITCH
        track_group = 8,
        direction = {true, true},
        coords_switch = vector3(-2174.31, -2508.44, 65.8),
        coords_action = vector3(-2138.8, -2478.46, 65.13),
        range = 50.0,
        name = {"MacFarlane", "MacFarlane"},
        heading = {80, 140},
        default = true,
    },
    {
        enable = true,
        junction_index = 2,
        track_group = 8,
        direction = {false, true},
        coords_switch = vector3(-1624.74, -2352.2, 44.97),
        coords_action = vector3(-1650.79, -2442.92, 50.38),
        range = 50.0,
        name = {"MacFarlane", "Blackwater"},
        heading = {280, 360},
        default = true,
    },

--====================================================
--|                TRAINS_TRANS_ELIZABETH            | 
--====================================================
    {
        enable = true,
        junction_index = 1,
        track_group = 9,
        direction = {true, false},
        coords_switch = vector3(-961.28, -756.57, 70.58),
        coords_action = vector3(-978.55, -826.38, 68.46),
        range = 50.0,
        name = {"Riggs", "Flatneck"},
        heading = {300, 360},
        default = true,
    },
}]]--
