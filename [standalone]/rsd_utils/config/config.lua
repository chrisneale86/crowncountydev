Config = {}

--------------------------------------------------------------------------------
-- CORE SETTINGS
--------------------------------------------------------------------------------
Config.Debug = true -- Enable debug prints
Config.CORE_USED = "VORP" -- Any core name defined in Config.Providers

-- Auto-detect core (set to true to automatically detect the running core configured in Config.Providers)
Config.AutoDetectCore = true

--------------------------------------------------------------------------------
-- LOGS
--------------------------------------------------------------------------------
Config.DiscordLog = {
    name = "Logs - Server Name",
    color = 14860932, --(convert hex to decimal)
    avatar = "",
    footer = "Logs - Server Name",
}
--------------------------------------------------------------------------------
-- PROVIDER SETTINGS
--------------------------------------------------------------------------------
-- Provider configurations for each core
Config.Providers = {
    VORP = {
        core_resource = "vorp_core",
        inventory_resource = "vorp_inventory",
    },
    RSG = {
        core_resource = "rsg-core",
        inventory_resource = "rsg-inventory",
    },
    REDEM = {
        core_resource = "redem_roleplay",
        inventory_resource = "redemrp_inventory",
    },
    CUSTOM = {
        -- Define your custom core settings here
        core_resource = "your_core",
        inventory_resource = "your_inventory",
    },
}

--------------------------------------------------------------------------------
-- CURRENCY SETTINGS
--------------------------------------------------------------------------------
-- Currency mapping for each core
Config.CurrencyMapping = {
    VORP = {
        [0] = "money",
        [1] = "gold",
        [2] = "rol",
    },
    RSG = {
        [0] = "cash",
        [1] = "bank",
        [2] = "crypto",
    },
    REDEM = {
        [0] = "money",
        [1] = "bankmoney",
        [2] = "money",
    },
}

--------------------------------------------------------------------------------
-- PLAYER DEFAULTS
--------------------------------------------------------------------------------
Config.PlayerDefaults = {
    job = "unemployed",
    jobgrade = 0,
    gang = "none",
    ganggrade = 0,
}

--------------------------------------------------------------------------------
-- COMMANDS
--------------------------------------------------------------------------------
Config.Commands = {
    refresh_character = "rc",-- Command to refresh character appearance
}

--------------------------------------------------------------------------------
-- NOTIFICATIONS & PROGRESS BAR
--------------------------------------------------------------------------------
Config.Notifications = {
    provider = "rsd",-- "rsd" / "ox" / "custom"
    default_duration = 3000,
    -- RSD settings // already configured in rsd_notify
    -- OX_LIB settings
    ox = {
        bottom   = { position = "bottom",       type = "inform" },
        top      = { position = "top",          type = "inform" },
        left     = { position = "top-left",     type = "inform" },
        right    = { position = "top-right",    type = "inform" },
        center   = { position = "center-right", type = "inform" },
        advanced = { position = "top-right",    type = "inform" },
    },
    -- CUSTOM settings // Define your handlers:
    -- custom = {
    --     bottom = function(message, duration) end,
    --     top = function(message, duration) end,
    --     left = function(message, duration) end,
    --     right = function(message, duration) end,
    --     center = function(message, duration) end,
    --     advanced = function(message, duration, data) end,
    --         -- data = { dict, icon, color, faIcon (converted), hexColor (converted) }
    --     leftAdvanced = function(title, subtext, duration, data) end,
    --         -- data = { dict, icon, faIcon (converted) }
    --     topAdvanced = function(title, subtext, duration) end,
    --     progressBar = function(text, time, callback) end,
    -- }
}
Config.NotificationsConversions = {
    -- Icon conversion: rsd_notify blip → FontAwesome icon
    icons = {
        ["blip_ambient_mission"] = "circle-info",
        ["blip_shop_coach_fencing"] = "hot-air-balloon",
        ["blip_shop_store"] = "store",
        ["blip_shop_bank"] = "building-columns",
        ["blip_shop_doctor"] = "kit-medical",
        ["blip_shop_gunsmith"] = "gun",
        ["blip_shop_stable"] = "horse",
        ["blip_shop_tailor"] = "shirt",
        ["blip_shop_barber"] = "scissors",
        ["blip_shop_butcher"] = "drumstick-bite",
        ["blip_shop_fence"] = "gem",
        ["blip_shop_post_office"] = "envelope",
        ["blip_shop_hotel"] = "bed",
        ["blip_shop_saloon"] = "beer-mug-empty",
        ["blip_shop_trapper"] = "paw",
        ["blip_mission"] = "location-dot",
        ["blip_player"] = "user",
        -- Add more as needed...
    },
    
    -- Color conversion: rsd_notify color → HEX
    colors = {
        ["COLOR_PURE_WHITE"] = "#FFFFFF",
        ["COLOR_WHITE"] = "#F0F0F0",
        ["COLOR_BLACK"] = "#000000",
        ["COLOR_RED"] = "#FF0000",
        ["COLOR_GREEN"] = "#00FF00",
        ["COLOR_BLUE"] = "#0000FF",
        ["COLOR_YELLOW"] = "#FFFF00",
        ["COLOR_ORANGE"] = "#FFA500",
        ["COLOR_GOLD"] = "#FFD700",
        ["COLOR_PURPLE"] = "#800080",
        ["COLOR_PINK"] = "#FFC0CB",
        ["COLOR_GREY"] = "#808080",
        -- Add more as needed...
    },
}
--------------------------------------------------------------------------------
-- LANGUAGE
--------------------------------------------------------------------------------
Config.Language = {
    -- Error
    not_enough_money = "Not enough money",
    not_enough_gold  = "Not enough gold",
    not_enough_items = "Not enough items",
    inventory_full   = "Inventory is full",
    -- Success
    item_received  = "Received %s x%d",
    item_removed   = "Lost %s x%d",
    money_received = "Received $%s",
    money_removed  = "Paid $%s",
    -- Logs
    logs_player_1 = "Player 1: ",
    logs_player_2 = "Player 2: ",
}

--------------------------------------------------------------------------------
-- REGIONS & TOWNS (for location utils)
--------------------------------------------------------------------------------
Config.Regions = {
    ["GuarmaD"] = "Guarma, GM",
    ["greatPlains"] = "Great Plains, WE",
    ["TallTrees"] = "Tall Trees, WE",
    ["bigvalley"] = "Big Valley, WE",
    ["HennigansStead"] = "Hennigan's Stead, NA",
    ["ChollaSprings"] = "Cholla Springs, NA",
    ["RioBravo"] = "Rio Bravo, NA",
    ["GaptoothRidge"] = "Gaptooth Ridge, NA",
    ["Cumberland"] = "Cumberland, NH",
    ["Heartlands"] = "The Heartlands, NH",
    ["roanoke"] = "Roanoke Ridge, NH",
    ["BayouNwa"] = "Bayou Nwa, LE",
    ["BluewaterMarsh"] = "Bluewater Marsh, LE",
    ["scarlettMeadows"] = "Scarlett Meadows, LE",
    ["GrizzliesEast"] = "Grizzlies East, AM",
    ["GrizzliesWest"] = "Grizzlies West, AM",
    ["DiezCoronas"] = "Diez Coronas, NP",
    ["Perdido"] = "Perdido, NP",
    ["PuntaOrgullo"] = "Punta Orgullo, NP",
    ["OtherPlace"] = "Unknown",
}

Config.Towns = {
    ["Annesburg"] = "Annesburg",
    ["Armadillo"] = "Armadillo",
    ["Blackwater"] = "Blackwater",
    ["BeechersHope"] = "Beecher's Hope",
    ["Braithwaite"] = "Braithwaite Manor",
    ["Butcher"] = "Butcher Creek",
    ["Caliga"] = "Caliga Hall",
    ["cornwall"] = "Cornwall Kerosene",
    ["Emerald"] = "Emerald Ranch",
    ["lagras"] = "Lagras",
    ["Manzanita"] = "Manzanita Post",
    ["Rhodes"] = "Rhodes",
    ["Siska"] = "Sisika Penitentiary",
    ["StDenis"] = "Saint Denis",
    ["Strawberry"] = "Strawberry",
    ["Tumbleweed"] = "Tumbleweed",
    ["valentine"] = "Valentine",
    ["VANHORN"] = "Van Horn",
    ["Wallace"] = "Wallace Station",
    ["wapiti"] = "Wapiti",
    ["OtherPlace"] = "Wilderness",
}

--------------------------------------------------------------------------------
-- PROP PLACER SETTINGS
--------------------------------------------------------------------------------
Config.PropPlacer = {
    keys = {
        place = 0x07B8BEAF,      -- Left Click
        confirm = 0xC7B5340A,   -- ENTER
        cancel = 0x156F7119,    -- BACKSPACE
        rotate = 0x760A9C6F,    -- G
        ground = 0xD9D0E1C0,    -- SPACE
        height = {0x911CB09E, 0x4403F97F}, -- Arrows
        wheel_up = {`INPUT_CREATOR_LT`, `INPUT_PREV_WEAPON`},
        wheel_down = {`INPUT_CREATOR_RT`, `INPUT_NEXT_WEAPON`},
    },
    labels = {
        height = "Height",
        place = "Place",
        cancel = "Cancel",
        position = {"Position X", "Position Y", "Position Z", "Rotation X", "Rotation Y", "Rotation Z"},
        ground = "Ground",
        confirm = "Confirm",
    },
}
