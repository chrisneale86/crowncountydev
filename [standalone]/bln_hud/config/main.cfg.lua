Config = {}

Config.DebugMode = false    -- Enable or disable debug mode
Config.DevMode = false      -- false on production, true on development

Config.adminGroup = "admin" -- Admin group name for permission checks

Config.nativeUI = {
    hideAmmoHUD = true, -- Hide game's native ammo HUD
    hideCoreHUD = true, -- Hide game's native core UI elements (like health, stamina...)
}

Config.Persistence = {
    saveInterval = 120000,        -- Background save interval (2 minutes)
    forceSaveOnDisconnect = true, -- Always save on disconnect
    minSaveInterval = 30000,      -- Minimum time between saves (30 seconds)
}

Config.Death = {
    restoreHungerAndThirst = true, -- Restore hunger and thirst when dead and heal
}

Config.tickInterval = 800 -- The interval in milliseconds to update hud data (tick)

-- ------------------------------------------------
-- Commands
-- ------------------------------------------------
Config.Commands = {
    toggleEditor = {
        command = "bln_edithud", -- Command to toggle the editor
        allowIf = function()
            return true          -- Return `true` to allow everyone, or add your allow condition.
        end
    },
    toggleHud    = {
        command = "bln_togglehud", -- Command to toggle the hud
        allowIf = function()
            return true            -- Return `true` to allow everyone, or add your allow condition.
        end
    }
}

-- ------------------------------------------------
-- Map Settings
-- ------------------------------------------------
Config.Map = {
    enableCustomRadarModes = true, -- Enable or disable the custom radar type. If false, uses default game settings.
    radarModes = {
        -- Options: "off", "regular", "expanded", "compass"
        onFoot     = "regular",
        onSwimming = "regular",
        onMount    = "regular",
        onVehicle  = "regular",
    }
}

-- ------------------------------------------------
-- Voice
-- ------------------------------------------------
Config.voice = {
    use = 'mumble',       -- 'mumble', 'saltychat', 'yaca'.
    enableMarker = true,  -- Enable or disable voice range marker
    displayMode = "number", -- "text" to show label, "number" to show range index number only.
    voiceModes = {        -- Voice modes and their visual marker color
        { label = "Whisper",  range = 3.0,  markerColor = { 0, 128, 0, 100 } },
        { label = "Normal",   range = 8.0,  markerColor = { 47, 120, 255, 100 } },
        { label = "Shouting", range = 15.0, markerColor = { 231, 201, 30, 100 } },
        { label = "Riding",   range = 32.0, markerColor = { 233, 41, 41, 100 } },
    }
}

-- ------------------------------------------------
-- Temperature
-- ------------------------------------------------
Config.Temperature = {
    format = 'celsius',         -- 'celsius' or 'fahrenheit'[]poiuytrr
    min = -8,                   -- Minimum temperature before impacts health
    max = 38,                   -- Maximum temperature before impacts health
    damage = 5,                 -- Total damage on health when min/max limit reach.
    animations = {
        hotAnimEnabled = true,  -- Enable or disable hot/cold animations
        coldAnimEnabled = true, -- Enable or disable hot/cold animations
        cooldown = 20000        -- Cooldown time in milliseconds before playing the same temperature animation again
    },
    warnings = {
        enabled = true,     -- Enable or disable temperature warnings/notifications.
        coldEnabled = true, -- Enable or disable cold warnings specifically
        hotEnabled = true,  -- Enable or disable hot warnings specifically
        coldThreshold = 5,  -- Degrees before min temp to show cold warning (min + this value)
        hotThreshold = 5,   -- Degrees before max temp to show hot warning (max - this value)
        cooldown = 30000,   -- Cooldown time in milliseconds between warnings (30 seconds)
        duration = 5000     -- How long warning notifications stay visible (5 seconds)
    },
    clothingSystem = {
        enabled = true,
        cacheInterval = 5000, -- How often to recalculate clothing effects (ms)

        -- Temperature ranges for context-aware calculations
        temperatureRanges = {
            cold = 8, -- Below (min + 8) is considered "cold context"
            hot = 10  -- Above (max - 10) is considered "hot context"
        },

        -- Clothing items with hash-based identification
        -- Hash list: https://raw.githubusercontent.com/femga/rdr3_discoveries/refs/heads/master/clothes/cloth_hash_names.lua
        items = {
            ["hat"] = {
                hash = 0x9925C067,
                heatOnCold = 1, -- Adds 1 heat when cold (slight warmth)
                heatOnHot = -1, -- Removes 1 heat when hot (shade effect)
            },

            ["shirt"] = {
                hash = 0x2026C46D,
                heatOnCold = 1,
                heatOnHot = 1,
            },

            ["pants"] = {
                hash = 0x1D4C528A,
                heatOnCold = 1,
                heatOnHot = 0,
            },

            ["boots"] = {
                hash = 0x777EC6EF,
                heatOnCold = 1,
                heatOnHot = 0,
            },

            ["coat"] = {
                hash = 0xE06D30CE,
                heatOnCold = 16,
                heatOnHot = 12,
            },

            ["open_coat"] = {
                hash = 0x662AC34,
                heatOnCold = 13,
                heatOnHot = 8,
            },

            ["gloves"] = {
                hash = 0xEABE0032,
                heatOnCold = 4,
                heatOnHot = 1,
            },

            ["vest"] = {
                hash = 0x485EE834,
                heatOnCold = 2,
                heatOnHot = 0,
            },

            ["poncho"] = {
                hash = 0xAF14310B,
                heatOnCold = 1,
                heatOnHot = 0,
            },

            ["skirt"] = {
                hash = 0xA0E3AB7F,
                heatOnCold = -1,
                heatOnHot = -1,
            },

            ["chaps"] = {
                hash = 0x3107499B,
                heatOnCold = 1,
                heatOnHot = 0,
            },
        }
    }
}
-- ------------------------------------------------
-- Stress
-- ------------------------------------------------
Config.Stress = {
    enabled = false, -- Enable or disable stress system

    -- Recovery settings
    recovery = {
        base = 0.5,                -- Base recovery amount
        interval = 2000,           -- Interval between recovery ticks in milliseconds.
        idleMultiplier = 1.0,      -- Normal recovery when idle
        walkingMultiplier = 1.5,   -- 50% more recovery when walking
        crouchingMultiplier = 4.0, -- 2x recovery when crouching
        runningMultiplier = 0.5,   -- 50% less recovery when running
        swimmingMultiplier = 0.3,  -- 70% less recovery when swimming
    },

    -- Gain stress settings
    gain = {
        shooting = {
            gainStress = 2.0, -- Amount of stress gained when shooting
            chance = 50,      -- % chance of gaining stress on each shot (temporarily 100% for testing)
            sleep = 500       -- How often to check (ms)
        },
        speeding = {
            gainStress = 2.5,    -- Amount of stress gained when speeding
            whenSpeedReach = 50, -- Speed threshold (MPH)
            sleep = 1000         -- How often to check (ms)
        },
        sprinting = {
            gainStress = 0.3, -- Amount of stress gained when sprinting
            chance = 30,      -- % chance of gaining stress while sprinting
            sleep = 2000      -- How often to check (ms)
        },
        fighting = {
            gainStress = 1.5, -- Amount of stress gained in melee combat
            chance = 60,      -- % chance of gaining stress during combat
            sleep = 1500      -- How often to check (ms)
        }
    },

    -- Stress levels
    levels = {
        {
            range = { 0, 25 },    -- Stress range (0-25% = calm)
            interval = 0,         -- How often effects trigger (0 = disabled)
            cameraShake = false,  -- Camera shake effect
            healthDamage = false, -- Health damage amount (false = disabled)
            ragdoll = false,      -- Ragdoll effect (false = disabled)
            screenFade = false,   -- Screen fade effect (true/false)
            screenFx = false,     -- Animation post effects (false = disabled)
        },
        {
            range = { 26, 50 }, -- Stress range (26-50% = getting tense)
            interval = 8000,    -- Effects every 8 seconds
            cameraShake = { type = "SMALL_EXPLOSION_SHAKE", intensity = 0.1 },
        },
        {
            range = { 51, 75 }, -- Stress range (51-75% = stressed)
            interval = 4000,
            cameraShake = { type = "SMALL_EXPLOSION_SHAKE", intensity = 0.3 },
            healthDamage = 2,
            screenFx = { name = "MP_SkillGeneric01", duration = 1000 },
        },
        {
            range = { 76, 100 }, -- Stress range (76-100% = panic)
            interval = 2000,
            cameraShake = { type = "SMALL_EXPLOSION_SHAKE", intensity = 0.5 },
            healthDamage = 5,
            ragdoll = { minDuration = 1750, maxDuration = 3500 },
            screenFade = true,
            screenFx = { name = "MP_SkillGeneric01", duration = 1000 },
        }
    },

    -- Scenarios that help reduce stress
    scenarios = {
        {
            name = "sitting",
            hash = GetHashKey("WORLD_HUMAN_SIT"),
            recoveryMultiplier = 4.5
        },
        {
            name = "sitting_ground",
            hash = GetHashKey("WORLD_HUMAN_SIT_GROUND"),
            recoveryMultiplier = 4.0
        },
        {
            name = "sitting_fire",
            hash = GetHashKey("WORLD_HUMAN_SIT_FIRE"),
            recoveryMultiplier = 4.0
        },
        {
            name = "smoking",
            hash = GetHashKey("WORLD_HUMAN_SMOKE"),
            recoveryMultiplier = 6.2
        },
    }
}

-- ------------------------------------------------
-- Hunger
-- ------------------------------------------------
Config.Hunger = {
    -- Initial values
    initial = 50, -- Starting hunger value (0-100)

    -- Drain rates based on activity (per tick)
    drain = {
        idle = { 0.05, 10000 },   -- {amount, interval}, Drain rate when idle
        walking = { 0.08, 4000 }, -- {amount, interval}, Drain rate when walking
        running = { 0.12, 5000 }, -- {amount, interval}, Drain rate when running
    },

    -- Temperature modifiers (affects hunger drain rate)
    temperature = {
        enabled = true,       -- Enable or disable temperature effects on hunger drain
        cold = {
            threshold = 8,    -- Temperature below this triggers cold effects
            multiplier = 1.2, -- 20% faster drain in cold weather
        },
        hot = {
            threshold = 30,   -- Temperature above this triggers hot effects
            multiplier = 1.1, -- 10% faster drain in hot weather
        },
    },

    -- Health effects
    criticalLevel = 10,    -- Level at which visual effects begin
    damageLevel = 5,       -- Level at which health damage begins
    damageAmount = 5,      -- Health damage per tick when at critical level
    damageInterval = 2000, -- Interval between damage ticks when below damage level

    -- Overeating effects (Vomit)
    overeatingLimit = 99, -- Threshold above which player will vomit when eating more

    -- UI thresholds
    thresholds = {
        high = 80,   -- High food level
        medium = 50, -- Medium food level
        low = 20     -- Low food level (warning)
    },

    enableWarnings = true, -- Enable or disable warnings/notifications
}
-- ------------------------------------------------
-- Thirst
-- ------------------------------------------------
Config.Thirst = {
    -- Initial values
    initial = 50, -- Starting thirst value (0-100)

    -- Drain rates based on activity (per tick)
    drain = {
        idle = { 0.05, 10000 },   -- {amount, interval}, Drain rate when idle
        walking = { 0.08, 4000 }, -- {amount, interval}, Drain rate when walking
        running = { 0.12, 5000 }, -- {amount, interval}, Drain rate when running
    },

    -- Temperature modifiers (affects thirst drain rate)
    temperature = {
        enabled = true,       -- Enable or disable temperature effects on thirst drain
        cold = {
            threshold = 8,    -- Temperature below this triggers cold effects
            multiplier = 1.2, -- 20% faster drain in cold weather
        },
        hot = {
            threshold = 30,   -- Temperature above this triggers hot effects
            multiplier = 1.1, -- 10% faster drain in hot weather
        },
    },

    -- Health effects
    criticalLevel = 10,    -- Level at which visual effects begin
    damageLevel = 5,       -- Level at which health damage begins
    damageAmount = 5,      -- Health damage per tick when at critical level
    damageInterval = 2500, -- Interval between damage ticks when below damage level

    -- UI thresholds
    thresholds = {
        high = 80,   -- High water level
        medium = 50, -- Medium water level
        low = 20     -- Low water level (warning)
    },

    enableWarnings = true, -- Enable or disable warnings/notifications
}
-- ------------------------------------------------
-- Urination
-- ------------------------------------------------
Config.Urine = {
    enabled = false, -- Enable or disable urine system

    -- Initial values
    initial = 0, -- Starting urine value (0-100, 0 = empty bladder)

    -- Drain rates based on activity (per tick)
    drain = {
        idle = { 0.02, 3000 },    -- {amount, interval}, Drain rate when idle
        walking = { 0.03, 3000 }, -- {amount, interval}, Drain rate when walking
        running = { 0.04, 2000 }, -- {amount, interval}, Drain rate when running
    },

    -- Health effects when full
    criticalLevel = 95,    -- Level at which critical warnings appear
    damageLevel = 90,      -- Level at which health damage begins
    damageAmount = 3,      -- Health damage per tick when at critical level
    damageInterval = 6000, -- Interval between damage ticks when above damage level

    -- Peeing system
    command = "pee",   -- Command to trigger peeing
    peeThreshold = 80, -- Minimum urine level required to pee (prevents spam)
    animation = {
        male = {
            dictionary = 'amb_misc@world_human_pee@male_a@idle_c',
            name = 'idle_h',
            duration = 10000 -- Animation duration in milliseconds (10 seconds)
        },
        female = {
            dictionary = 'amb_camp@world_camp_fire_crouch_ground@male_a@base',
            name = 'base',
            duration = 10000 -- Animation duration in milliseconds (10 seconds)
        },
    },

    -- Sound effects
    sound = true, -- Play pain sound when taking damage from full bladder

    -- Temperature modifiers (affects urine accumulation rate)
    temperature = {
        enabled = true,       -- Enable or disable temperature effects on urine accumulation
        cold = {
            threshold = 8,    -- Temperature below this triggers cold effects
            multiplier = 1.2, -- 20% faster accumulation in cold weather (physiologically accurate)
        },
        hot = {
            threshold = 30,   -- Temperature above this triggers hot effects
            multiplier = 1.1, -- 10% faster accumulation in hot weather
        },
    },

    -- UI thresholds
    thresholds = {
        high = 80,   -- High urine level (warning)
        medium = 50, -- Medium urine level
        warning = 80 -- Warning level threshold
    },

    enableWarnings = true, -- Enable or disable warnings/notifications
}
-- ------------------------------------------------
-- Drunk
-- ------------------------------------------------
Config.Drunk = {
    min = 1,          -- Minimum drinks needed to start getting drunk (when drunkLevel reaches this, effects begin)
    max = 4,          -- Maximum drinks needed to become very drunk (player reaches max level, may fall to ground)
    duration = 30000, -- Duration in milliseconds between each drunkenness level reduction

    -- Blackout teleport system (for alcoholblackout animation items)
    blackoutTeleport = {
        enabled = true,     -- Global enable/disable for blackout teleports
        drinksRequired = 3, -- Number of blackout drinks needed to activate teleport (player must drink this many blackout items)
        locations = {
            -- Valentine area
            vector4(-482.555419921875, 949.872802734375, 84.34955596923828, 114.6901397705078),

            -- Blackwater area
            vector4(-729.4642944335938, -1211.0372314453125, 41.64065170288086, 234.7254638671875),

            -- Saint Denis / Rhodes area
            vector4(1875.6141357421875, -830.8383178710938, 42.65463638305664, 9.635422706604),

            -- Strawberry area
            vector4(-2348.71826171875, -406.0620422363281, 142.1005401611328, 92.19503021240236),

            -- New Austin area
            vector4(-3260.783203125, -3144.00634765625, -9.90234184265136, 152.7444000244141),
        }
    }
}

-- ------------------------------------------------
-- Snake Poison
-- ------------------------------------------------
Config.SnakePoison = {
    enabled = false,        -- Enable or disable snake poison system
    damageInterval = 2000, -- Interval between damage ticks when below damage level
    damageAmount = 5,      -- Health damage per tick when at critical level
    snakeModels = {
        [GetHashKey("a_c_snake_01")] = true,
        [GetHashKey("a_c_snakeblacktailrattle_01")] = true,
        [GetHashKey("a_c_snakeferdelance_01")] = true,
        [GetHashKey("a_c_snakeredboa_01")] = true,
        [GetHashKey("a_c_snakeredboa10ft_01")] = true,
        [GetHashKey("a_c_snakewater_01")] = true
    }
}

-- ------------------------------------------------
-- Dirtiness
-- ------------------------------------------------
Config.Dirtiness = {
    Enabled = true,     -- Enable or disable dirtiness system

    EnableFlies = true, -- Enable or disable flies
    -- Different thresholds for different fly levels
    FlyLevels = {
        Low = 50,    -- Low fly intensity (50-69%)
        Medium = 70, -- Medium fly intensity (70-89%)
        High = 90    -- High fly intensity (90-100%)
    },

    -- Damage settings
    Damage = {
        enabled = true,   -- Set to false to disable damage
        threshold = 80,   -- Dirt percentage (0-100) threshold for taking damage
        amount = 3,       -- Amount of health to remove per damage tick
        interval = 10000, -- How often to apply damage (ms)
        sound = true,     -- Play pain sound when taking damage
    },
}

-- ------------------------------------------------
-- Population
-- ------------------------------------------------
Config.Population = {
    enabled = true,      -- Enable or disable population system
    detectDistance = 50, -- Distance in units to detect nearby players
    thresholds = {       -- Thresholds for color changes in ui.
        low = 20,        -- Low threshold (~20 players)
        warning = 20,    -- Warning threshold (~20 players)
        danger = 40,     -- Danger threshold (~40 players)
    }
}

-- ------------------------------------------------
-- Telegram
-- ------------------------------------------------
Config.Telegram = {
    animateMessagesCount = false, -- Enable or disable messages count animation (blinking).

    -- Custom function to get the unread messages count
    getUnreadMessagesCount = function()
        return LocalPlayer.state.telegramUnreadMessages or 0
    end,
}

-- ------------------------------------------------
-- PVP
-- ------------------------------------------------
Config.Pvp = {
    enabled = true,        -- true to use our pvp system, false to disable pvp
    command = "pvp",       -- Command to toggle PVP
    enableWarnings = true, -- Enable or disable warnings/notifications
}

-- ------------------------------------------------
-- Ammo
-- ------------------------------------------------
Config.Ammo = {
    nonAmmoWeapons = { -- Weapons that don't use/have ammo (melee, lasso, etc.)
        [GetHashKey("WEAPON_UNARMED")] = true,
        [GetHashKey("WEAPON_MELEE_KNIFE")] = true,
        [GetHashKey("WEAPON_MELEE_CLEAVER")] = true,
        [GetHashKey("WEAPON_MELEE_HATCHET")] = true,
        [GetHashKey("WEAPON_MELEE_MACHETE")] = true,
        [GetHashKey("WEAPON_MELEE_TORCH")] = true,
        [GetHashKey("WEAPON_MELEE_LANTERN")] = true,
        [GetHashKey("WEAPON_LASSO")] = true,
        [GetHashKey("WEAPON_FISHINGROD")] = true,
        [GetHashKey("WEAPON_KIT_BINOCULARS")] = true,
        [GetHashKey("WEAPON_KIT_CAMERA")] = true,
        [GetHashKey("WEAPON_MELEE_BROKEN_SWORD")] = true,
        [GetHashKey("WEAPON_MELEE_ANCIENT_HATCHET")] = true,
        [GetHashKey("WEAPON_MELEE_HAMMER")] = true,
    }
}

-- ------------------------------------------------
-- Time
-- ------------------------------------------------
Config.Time = {
    format = "12", -- "12" for 12-hour format (AM/PM), "24" for 24-hour format
}

-- ------------------------------------------------
-- HUD UI Visibility Settings
-- ------------------------------------------------

Config.Hud = {
    AutoHide = {                        -- Hide HUD automatically based on certain conditions
        -------
        whenCoreNormal = false,         -- If true, and for example Health is normal (is %100), HUD will be auto hidden
        whenPlayerDead = true,          -- If true, HUD will be auto hidden when player is dead
        whenCinematicModeActive = true, -- If true, HUD will be auto hidden when player is in cinematic mode
        whenMapOpen = true,             -- If true, HUD will be auto hidden when map is open
        whenPauseMenuActive = true,     -- If true, HUD will be auto hidden when pause menu is active
        whenScreenFadingInOrOut = true, -- If true, HUD will be auto hidden when screen is fading in or out
        whenLoadingScreenActive = true, -- If true, HUD will be auto hidden when loading screen is active
    },
    EnableHud = {                       -- Permanent Enable/show specific HUD
        -------cores-------
        Stamina = true,
        Health = true,
        HorseHealth = true,
        HorseStamina = true,
        Food = true,
        Water = true,
        Urine = false,
        Stress = false,
        Population = false,
        Voice = true,
        Temperature = true,
        Telegram = false,
        Ammo = true,
        -------extras-------
        Logo = false,
        Money = true,
        Gold = false,
        Time = true,
        Job = false,
        UserId = true,
        PVP = false,
    },
    extras = {                -- Extra elements: Money, UserId, Time, ...etc
        showMode = "always",  -- "command", "keypress", "always"
        showKey = 0x4CC0E2FE, -- [B], Key to show extra elements if mode is "keypress".
        showCommand = "info", -- Command to show extra elements if mode is "command".
        showDuration = 7000,  -- The time to show the extra elements when called, if mode not `always`.
        sound = {             -- Sound to play when showing extra elements if mode not `always`
            enabled = true,
            name = "REWARD_NEW_GUN",
            set = "HUD_REWARD_SOUNDSET"
        }
    },
    editor = { -- Editor's elements visibility settings
        -------
        global = {
            EnableGridSize = true,
            EnableCoreVisibility = true,
            EnableGlobalSize = true,
            EnableExportSettings = true,
            EnableMinimapLayouts = true
        },
        core_specific = {
            EnableCoreSize = true,
            EnableCoreVisibilityToggle = true,
            EnableColors = true,
            EnableSegments = true,
            EnableTipBadgeSettings = true,
        },
    }
}


-- ------------------------------------------------
-- Notifications
-- ------------------------------------------------
Config.notify = {
    placement = "middle-left", -- Default notification placement
    duration = 7000,           -- Default notification duration (ms)

    -- Customize the URL of the notify's inventory item
    -- ------
    -- customItemURL = function(itemName)
    --     return "nui://link.to/" .. itemName .. ".png"
    -- end
    -- ------
}
