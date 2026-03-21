-- ------------------------------------------------
-- Default HUD settings
-- ------------------------------------------------
-- These settings will be used as fallback if no saved settings in db exist.
-- More info: https://docs.bln-studio.com/docs/bln_hud.html#what-does-the-defaults-cfg-lua-file-do
-- ------------------------------------------------

Defaults = {}

-- Default core positions and settings
Defaults.Cores = {
    food = {
        position = {
            off = {
                left = 21.21995048019208,
                bottom = 0.7037037037037024
            },
            regular = {
                left = 21.21995048019208,
                bottom = 0.7037037037037024
            },
            expanded = {
                left = 21.21995048019208,
                bottom = 0.7037037037037024
            },
            compass = {
                left = 21.21995048019208,
                bottom = 0.7037037037037024
            }
        },
        settings = {
            centerBgColor = "#000000",
            dangerColor = "#ff0000",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            outerColor = "#ffffff",
            segments = 1,
            shape = "circle",
            showSegments = false,
            size = 44,
            visible = true,
        },
    },
    health = {
        position = {
            off = {
                left = 15.170630752300916,
                bottom = 0.7037037037037018
            },
            regular = {
                left = 15.170630752300916,
                bottom = 0.7037037037037018
            },
            expanded = {
                left = 15.170630752300916,
                bottom = 0.7037037037037018
            },
            compass = {
                left = 15.170630752300916,
                bottom = 0.7037037037037018
            }
        },
        settings = {
            centerBgColor = "#000000",
            goldColor = "#ffd700",
            innerBackColor = "#919191",
            innerBackDangerColor = "#5e0202",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            maxOuterColor = "#cccccc",
            outerColor = "#ffffff",
            outerDamageColor = "#ff0000",
            segments = 1,
            shape = "circle",
            showSegments = false,
            size = 44,
            visible = true,
        },
    },
    horseHealth = {
        position = {
            off = {
                left = 6.192677070828326,
                bottom = 0.703703703703682
            },
            regular = {
                left = 15.255177070828326,
                bottom = 6.6296296296296084
            },
            expanded = {
                left = 18.27601040416166,
                bottom = 6.6296296296296084
            },
            compass = {
                left = 6.192677070828326,
                bottom = 0.703703703703682
            }
        },
        settings = {
            centerBgColor = "#000000",
            dangerColor = "#ff0000",
            goldColor = "#ffd700",
            innerBackColor = "#919191",
            innerBackDangerColor = "#5e0202",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            maxOuterColor = "#cccccc",
            outerColor = "#ffffff",
            segments = 1,
            shape = "circle",
            showBadge = true,
            showSegments = false,
            size = 44,
            tipFontSize = 14,
            tipOffsetTop = -20,
            tipScale = 1.2,
            tipShowBg = false,
            tipTextColor = "#ffffff",
            visible = true,
        },
    },
    horseStamina = {
        position = {
            off = {
                left = 9.263880552220868,
                bottom = 0.6111111111110921
            },
            regular = {
                left = 18.222213885554204,
                bottom = 6.62962962962961
            },
            expanded = {
                left = 21.190963885554204,
                bottom = 6.5370370370370185
            },
            compass = {
                left = 9.263880552220868,
                bottom = 0.6111111111110921
            }
        },
        settings = {
            centerBgColor = "#000000",
            dangerColor = "#ff0000",
            goldColor = "#ffd700",
            innerBackColor = "#919191",
            innerBackDangerColor = "#5e0202",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            isGold = false,
            maxOuterColor = "#cccccc",
            outerColor = "#ffffff",
            segments = 1,
            showBadge = true,
            showSegments = false,
            size = 44,
            tipFontSize = 14,
            tipOffsetTop = -20,
            tipScale = 1.2,
            tipShowBg = false,
            visible = true,
        },
    },
    population = {
        position = {
            off = {
                left = 33.28950330132052,
                bottom = 0.6111111111111072
            },
            regular = {
                left = 33.28950330132052,
                bottom = 0.6111111111111072
            },
            expanded = {
                left = 33.28950330132052,
                bottom = 0.6111111111111072
            },
            compass = {
                left = 33.28950330132052,
                bottom = 0.6111111111111072
            }
        },
        settings = {
            centerBgColor = "#000000",
            innerDangerColor = "#F44336",
            innerNormalColor = "#4CAF50",
            innerWarningColor = "#FFC107",
            outerColor = "#ffffff",
            segments = 1,
            showSegments = false,
            size = 44,
            visible = true,
        },
    },
    primaryAmmo = {
        position = {
            off = {
                left = 92.1875,
                bottom = 90.83333333333331
            },
            regular = {
                left = 92.1875,
                bottom = 90.83333333333331
            },
            expanded = {
                left = 92.1875,
                bottom = 90.83333333333331
            },
            compass = {
                left = 92.1875,
                bottom = 90.83333333333331
            }
        },
        settings = {
            iconColor = "#ffffff",
            segments = 1,
            showSegments = false,
            size = 20,
            superscriptColor = "#a0a0a0",
            textColor = "#ffffff",
            visible = true,
        },
    },
    secondaryAmmo = {
        position = {
            off = {
                left = 86.19791666666664,
                bottom = 90.74074074074076
            },
            regular = {
                left = 86.19791666666664,
                bottom = 90.74074074074076
            },
            expanded = {
                left = 86.19791666666664,
                bottom = 90.74074074074076
            },
            compass = {
                left = 86.19791666666664,
                bottom = 90.74074074074076
            }
        },
        settings = {
            iconColor = "#ffffff",
            segments = 1,
            showSegments = false,
            size = 20,
            superscriptColor = "#a0a0a0",
            textColor = "#ffffff",
            visible = true,
        },
    },
    stamina = {
        position = {
            off = {
                left = 18.24977490996399,
                bottom = 0.6111111111111072
            },
            regular = {
                left = 18.24977490996399,
                bottom = 0.6111111111111072
            },
            expanded = {
                left = 18.24977490996399,
                bottom = 0.6111111111111072
            },
            compass = {
                left = 18.24977490996399,
                bottom = 0.6111111111111072
            }
        },
        settings = {
            centerBgColor = "#000000",
            goldColor = "#ffd700",
            innerBackColor = "#919191",
            innerBackDangerColor = "#5e0202",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            maxOuterColor = "#cccccc",
            outerColor = "#ffffff",
            outerDamageColor = "#ff0000",
            segments = 1,
            shape = "circle",
            showSegments = false,
            size = 44,
            visible = true,
        },
    },
    stress = {
        position = {
            off = {
                left = 27.22217637054821,
                bottom = 0.5185185185185084
            },
            regular = {
                left = 27.22217637054821,
                bottom = 0.5185185185185084
            },
            expanded = {
                left = 27.22217637054821,
                bottom = 0.5185185185185084
            },
            compass = {
                left = 27.22217637054821,
                bottom = 0.5185185185185084
            }
        },
        settings = {
            centerBgColor = "#000000",
            dangerColor = "#ff0000",
            innerBackColor = "#ababab",
            innerBackDangerColor = "#5e0202",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            maxOuterColor = "#cccccc",
            outerColor = "#ffffff",
            segments = 4,
            showSegments = true,
            size = 44,
            visible = true,
        },
    },
    telegram = {
        position = {
            off = {
                left = 39.27409595464152,
                bottom = 0.7046755532519313
            },
            regular = {
                left = 39.27409595464152,
                bottom = 0.7046755532519313
            },
            expanded = {
                left = 39.27409595464152,
                bottom = 0.7046755532519313
            },
            compass = {
                left = 39.27409595464152,
                bottom = 0.7046755532519313
            }
        },
        settings = {
            centerBgColor = "#000000",
            innerColor = "#ffffff",
            outerColor = "#ffffff",
            segments = 1,
            showBadge = true,
            showSegments = false,
            size = 44,
            tipBgColor = "#f61313",
            tipBgOpacity = 1,
            tipFontSize = 14,
            tipOffsetTop = -20,
            tipScale = 0.9,
            tipShowBg = true,
            visible = true,
        },
    },
    temp = {
        position = {
            off = {
                left = 30.28405112044818,
                bottom = 0.7037037037036935
            },
            regular = {
                left = 30.28405112044818,
                bottom = 0.7037037037036935
            },
            expanded = {
                left = 30.28405112044818,
                bottom = 0.7037037037036935
            },
            compass = {
                left = 30.28405112044818,
                bottom = 0.7037037037036935
            }
        },
        settings = {
            centerBgColor = "#000000",
            innerColdColor = "#0091ff",
            innerColor = "#ffffff",
            innerHotColor = "#ffae00",
            outerColor = "#ffffff",
            segments = 1,
            showBadge = true,
            showSegments = true,
            size = 44,
            tipBgOpacity = 1,
            tipFontSize = 13,
            tipOffsetTop = -24,
            tipScale = 1,
            tipShowBg = false,
            visible = true,
        },
    },
    urine = {
        position = {
            off = {
                left = 42.18580781903675,
                bottom = 0.70370370370369
            },
            regular = {
                left = 42.18580781903675,
                bottom = 0.70370370370369
            },
            expanded = {
                left = 42.18580781903675,
                bottom = 0.70370370370369
            },
            compass = {
                left = 42.18580781903675,
                bottom = 0.70370370370369
            }
        },
        settings = {
            centerBgColor = "#000000",
            dangerColor = "#ff0000",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            lowThreshold = 80,
            outerColor = "#ffffff",
            segments = 1,
            shape = "circle",
            showSegments = false,
            size = 44,
            visible = true,
        },
    },
    voice = {
        position = {
            off = {
                left = 36.240933873549416,
                bottom = 0.6111111111110912
            },
            regular = {
                left = 36.240933873549416,
                bottom = 0.6111111111110912
            },
            expanded = {
                left = 36.240933873549416,
                bottom = 0.6111111111110912
            },
            compass = {
                left = 36.240933873549416,
                bottom = 0.6111111111110912
            }
        },
        settings = {
            centerBgColor = "#000000",
            innerColor = "#ffffff",
            innerMutedColor = "#ff0000",
            innerTalkingColor = "#02bf08",
            outerColor = "#ffffff",
            segments = 4,
            showBadge = true,
            showSegments = true,
            size = 44,
            tipBgColor = "#000000",
            tipBgOpacity = 1,
            tipFontSize = 11,
            tipOffsetTop = -27,
            tipScale = 1.2,
            tipShowBg = false,
            tipTextColor = "#fff",
            visible = true,
            maxOuterColor = "#cccccc",
        },
    },
    water = {
        position = {
            off = {
                left = 24.23907062825131,
                bottom = 0.6111111111111001
            },
            regular = {
                left = 24.23907062825131,
                bottom = 0.6111111111111001
            },
            expanded = {
                left = 24.23907062825131,
                bottom = 0.6111111111111001
            },
            compass = {
                left = 24.23907062825131,
                bottom = 0.6111111111111001
            }
        },
        settings = {
            centerBgColor = "#000000",
            dangerColor = "#ff0000",
            innerColor = "#ffffff",
            innerDangerColor = "#ff0000",
            outerColor = "#ffffff",
            segments = 1,
            shape = "circle",
            showSegments = false,
            size = 44,
            visible = true,
        },
    },
}

-- Default extra UI elements positions and settings
Defaults.Extras = {
    gold = {
        position = {
            off = { left = 3.21946851525654, bottom = 90.36258503903028 },
            regular = { left = 3.21946851525654, bottom = 90.36258503903028 },
            expanded = { left = 3.21946851525654, bottom = 90.36258503903028 },
            compass = { left = 3.21946851525654, bottom = 90.36258503903028 }
        },
        settings = {
            fontSize = 24,
            iconColor = "#fec52a",
            superscriptColor = "#e4aa0c",
            textColor = "#fec52a",
            visible = true,
        },
    },
    job = {
        position = {
            off = { left = 2.12571851525654, bottom = 80.88986073843711 },
            regular = { left = 2.12571851525654, bottom = 80.88986073843711 },
            expanded = { left = 2.12571851525654, bottom = 80.88986073843711 },
            compass = { left = 2.12571851525654, bottom = 80.88986073843711 }
        },
        settings = {
            fontSize = 16,
            iconColor = "#ffffff",
            textColor = "#ffffff",
            visible = true,
        },
    },
    logo = {
        position = {
            off = { left = 46.37499999999998, bottom = 91.90615427457531 },
            regular = { left = 46.37499999999998, bottom = 91.90615427457531 },
            expanded = { left = 46.37499999999998, bottom = 91.90615427457531 },
            compass = { left = 46.37499999999998, bottom = 91.90615427457531 }
        },
        settings = {
            imageUrl = "https://iili.io/KVk1uPj.png",
            opacity = 0.6,
            visible = true,
            width = 143,
        },
    },
    money = {
        position = {
            off = { left = 9.86530184858988, bottom = 90.26999244643768 },
            regular = { left = 9.86530184858988, bottom = 90.26999244643768 },
            expanded = { left = 9.86530184858988, bottom = 90.26999244643768 },
            compass = { left = 9.86530184858988, bottom = 90.26999244643768 }
        },
        settings = {
            fontSize = 24,
            iconColor = "#109812",
            superscriptColor = "#a0a0a0",
            textColor = "#ffffff",
            visible = true,
        },
    },
    pvp = {
        position = {
            off = { left = 2.19076262130817, bottom = 75.01949036806676 },
            regular = { left = 2.19076262130817, bottom = 75.01949036806676 },
            expanded = { left = 2.19076262130817, bottom = 75.01949036806676 },
            compass = { left = 2.19076262130817, bottom = 75.01949036806676 }
        },
        settings = {
            fontSize = 16,
            iconColor = "#ffffff",
            textColor = "#ffffff",
            visible = true,
        },
    },
    time = {
        position = {
            off = { left = 2.19076262130818, bottom = 77.91461436974814 },
            regular = { left = 2.19076262130818, bottom = 77.91461436974814 },
            expanded = { left = 2.19076262130818, bottom = 77.91461436974814 },
            compass = { left = 2.19076262130818, bottom = 77.91461436974814 }
        },
        settings = {
            fontSize = 16,
            iconColor = "#ffffff",
            textColor = "#ffffff",
            visible = true,
        },
    },
    userId = {
        position = {
            off = { left = 2.2428459546415, bottom = 71.63060147917787 },
            regular = { left = 2.2428459546415, bottom = 71.63060147917787 },
            expanded = { left = 2.2428459546415, bottom = 71.63060147917787 },
            compass = { left = 2.2428459546415, bottom = 71.63060147917787 }
        },
        settings = {
            fontSize = 16,
            iconColor = "#ffffff",
            textColor = "#ffffff",
            visible = true,
        },
    },
}
