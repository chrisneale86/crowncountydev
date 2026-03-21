--====================================================
--|                    STATION                       | 
--====================================================
Config.DistanceStation = 2.0

Config.Stations = {

    VALENTINE = {
        --STATIONS PARAMETERS
        name = "Station",
        nameStation = "Valentine station",
        coords = vector3(-174.06, 626.62, 114.03),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-168.96, 620.43, 113.53), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[1][1],
                coords = vector3(-149.41, 646.61, 112.66),
            },
            {
                name = Config.LanguageDirection[1][2],
                coords = vector3(-180.66, 603.28, 112.66),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWHANOVER"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-169.73, 647.9, 113.64, 49.6),
        }
    },
    RHODES = {
        name = "Station",
        nameStation = "Rhodes station",
        coords = vector3(1228.24, -1300.25, 76.91),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(1223.82, -1308.22, 76.42), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[2][1],
                coords = vector3(1235.74, -1319.58, 75.57),
            },
            {
                name = Config.LanguageDirection[2][2],
                coords = vector3(1206.57, -1290.19, 76.58),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"LEMOYNE"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(1253.08, -1320.04, 76.21, 135.12),
        }
    },
    ANNESBURG = {
        name = "Station",
        nameStation = "Annesburg station",
        coords = vector3(2941.71, 1287.29, 44.64),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(2959.22, 1285.89, 43.92), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[3][1],
                coords = vector3(2962.98, 1294.67, 43.05),
            },
            {
                name = Config.LanguageDirection[3][2],
                coords = vector3(2937.45, 1256.31, 43.25)
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWHANOVER"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(2957.37, 1306.21, 44.48, 250.04),
        }
    },
    SAINTDENIS = {-- For this one, if you have wagons on track (sharp this "RequestImap(1946327170)" & "RequestImap(1284188544)" in interiors.lua)
        name = "Station",
        nameStation = "Saint-Denis station",
        coords = vector3(2711.99, -1448.74, 46.3),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(2719.35, -1452.03, 45.83), 1},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[4][1],
                coords = vector3(2731.01, -1446.04, 45.82),
            },
            {
                name = Config.LanguageDirection[4][2],
                coords = vector3(2683.11, -1468.42, 46.25),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"LEMOYNE"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(2715.94, -1453.63, 45.82, 288.75),
        }
    },
    EMERALD = {
        name = "Station",
        nameStation = "Emerald station",
        coords = vector3(1525.17, 442.78, 90.68),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(1529.78, 422.25, 90.36), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[5][1], 
                coords = vector3(1529.8, 460.41, 89.37),
            },
            {
                name = Config.LanguageDirection[5][2],
                coords = vector3(1529.6, 416.18, 89.37),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWHANOVER"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(1522.53, 420.9, 89.97, 277.87),
        }
    },
    FLATNECK = {
        name = "Station",
        nameStation = "Flatneck station",
        coords = vector3(-331.62, -355.67, 88.04),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-356.24, -357.62, 87.35), 1},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[6][1],
                coords = vector3(-319.8, -339.28, 87.35),
            },
            {
                name = Config.LanguageDirection[6][2],
                coords = vector3(-348.33, -353.61, 90.05),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWHANOVER"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-341.33, -336.87, 88.71, 111.54),
        }
    },
    --[[BLACKWATER = {
        name = "Station",
        nameStation = "Blackwater station",
        coords = vector3(-880.79, -1333.61, 43.97),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-885.32, -1348.33, 43.4), 1},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[14][1],
                coords = vector3(-885.57, -1310.64, 42.54),
            },
            {
                name = Config.LanguageDirection[14][2],
                coords = vector3(-885.36, -1353.98, 43.04),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWHANOVER"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-891.78, -1322.68, 43.42, 356.27),
        }
    },]]--
    BLACKWATER = {
    name = "Station",
    nameStation = "Blackwater Station",
    coords = vector3(-883.02, -1241.84, 44.14),
    blip = 4044460928,
    AllowedJobs = {"railroader"},
    --SHOP
    WithShop = true,
    coordsPreview = {vector3(-886.99, -1252.46, 43.33), 1},
    --SPAWN
    Spawn = {
        {
            name = Config.LanguageDirection[14][1],
            coords = vector3(-887.0, -1234.51, 43.33),
        },
        {
            name = Config.LanguageDirection[14][2],
            coords = vector3(-886.99, -1252.46, 43.33),
        }
    },
    --MISSION
    WithMission = true,
    RailSector = {"ELIZABETH"},
    RepairCart = {
        model = "utilliwag",
        coords = vector4(-878.19, -1220.58, 43.39, 36.43),
    }
   },
   MANZANITA = {
    name = "Station",
    nameStation = "Manzanita Station",
    coords = vector3(-1944.23, -1608.21, 116.69),
    blip = 4044460928,
    AllowedJobs = {"railroader"},
    --SHOP
    WithShop = true,
    coordsPreview = {vector3(-1950.46, -1606.26, 116.08), 0},
    --SPAWN
    Spawn = {
        {
            name = Config.LanguageDirection[1][1],
            coords = vector3(-1950.46, -1606.26, 116.08),
        },
        {
            name = Config.LanguageDirection[1][2],
            coords = vector3(-1951.63, -1598.47, 115.99),
        }
    },
    --MISSION
    WithMission = true,
    RailSector = {"ELIZABETH"},
    RepairCart = {
        model = "utilliwag",
        coords = vector4(-1947.33, -1589.21, 116.06, 21.97),
    }
},
    RIGGS = {
        name = "Station",
        nameStation = "Riggs station",
        coords = vector3(-1096.52, -571.95, 82.4),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-1131.45, -555.65, 84.14), 1},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[7][1],
                coords = vector3(-1100.93, -580.89, 81.85),
            },
            {
                name = Config.LanguageDirection[7][2],
                coords = vector3(-1123.41, -562.66, 82.27),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"AMBARINO", "ELIZABETH"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-1084.56, -579.8, 82.26, 3.28),
        }
    },
    WALLACE = {
        name = "Station",
        nameStation = "Wallace station",
        coords = vector3(-1308.62, 395.28, 95.38),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-1310.61, 402.1, 95.05), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[8][1],
                coords = vector3(-1321.58, 386.1, 94.54),
            },
            {
                name = Config.LanguageDirection[8][2],
                coords = vector3(-1298.52, 424.89, 93.78),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"AMBARINO", "ELIZABETH"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-1313.22, 384.64, 95.58, 54.13),
        }
    },
    BACCHUS = {
        name = "Station",
        nameStation = "Bacchus station",
        coords = vector3(579.76, 1687.35, 187.67),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(570.11, 1701.43, 187.66), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[9][1],
                coords = vector3(569.25, 1702.7, 186.78),
            },
            {
                name = Config.LanguageDirection[9][2],
                coords = vector3(601.2, 1672.66, 186.56),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"AMBARINO"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(599.52, 1695.05, 187.21, 37.72),
        }
    },
    VANHORN = {
        name = "Station",
        nameStation = "Vanhorn station",
        coords = vector3(2893.26, 626.43, 57.73),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(2884.91, 609.63, 57.74), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[10][1],
                coords = vector3(2896.83, 649.88, 56.01),
            },
            {
                name = Config.LanguageDirection[10][2],
                coords = vector3(2884.47, 608.14, 56.91),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWHANOVER"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(2889.31, 611.1, 57.53, 162.29),
        }
    },
    RANCH = {
        name = "Station",
        nameStation = "MacFarlane station",
        coords = vector3(-2499.23, -2423.44, 60.6),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-2509.41, -2398.79, 60.3), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[11][1],
                coords = vector3(-2491.65, -2452.37, 59.34),
            },
            {
                name = Config.LanguageDirection[11][2],
                coords = vector3(-2507.8, -2407.79, 60.22),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWAUSTIN"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-2503.93, -2403.16, 60.17, 10.25),
        }
    },
    ARMADILLO = {
        name = "Station",
        nameStation = "Armadillo station",
        coords = vector3(-3734.04, -2602.07, -12.92),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-3749.47, -2623.21, -13.8), 1},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[12][1],
                coords = vector3(-3749.25, -2575.87, -14.58),
            },
            {
                name = Config.LanguageDirection[12][2],
                coords = vector3(-3749.29, -2637.23, -14.74),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWAUSTIN"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-3741.01, -2632.69, -13.94, 89.26),
        }
    },
    BENEDICT = {
        name = "Station",
        nameStation = "Benedict Point station",
        coords = vector3(-5230.58, -3470.41, -20.57),
        blip = 4044460928,
        AllowedJobs = {"railroader"},
        --SHOP
        WithShop = true,
        coordsPreview = {vector3(-5236.43, -3493.75, -21.05), 0},
        --SPAWN
        Spawn = {
            {
                name = Config.LanguageDirection[13][1],
                coords = vector3(-5236.46, -3493.27, -21.97),
            },
            {
                name = Config.LanguageDirection[13][2],
                coords = vector3(-5237.5, -3451.92, -22.31),
            }
        },
        --MISSION
        WithMission = true,
        RailSector = {"NEWAUSTIN"},
        RepairCart = {
            model = "utilliwag",
            coords = vector4(-5227.32, -3491.79, -21.34, 91.49),
        }
    },
}
