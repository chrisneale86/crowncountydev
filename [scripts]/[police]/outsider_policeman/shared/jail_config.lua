-- jail system
Jail = {}

-- BOAT DRIVER HOURS OF OPERATION THIS CAN BE USED TO MAKE PRISONERS WAIT IN CELLS UNTIL BOAT DRIVER IS AVAILABLE
Jail.HoursOfOperation = { -- to leave it always available set both to 0
    Open = 0,             -- 8 am
    Close = 0,           -- 8 pm
}

-- ONLY POLICE CAN SEE THE PROMPT TO ESCORT PRISONERS TO JAIL
Jail.TravelLocations = {
    {                                                           -- ST Denis
        Position = vector3(2949.25, -1233.52, 42.47),           -- menu ,blip
        Scene = {
            Spawn = vector4(2946.54, -1230.63, 40.28, 272.13),  -- model position to spawn
            Model = "rowboat",                                  -- YOU MUST ADD A BOAT THAT ALLOWS PLAYERS TO SIT IN THE BACK
            PlayerBoatModel = "boatsteam02x",                   -- MODEL WHEN PLAYER REQUESTS MANUALY BOAT
            NpcModel = "a_m_m_valtownfolk_01",                  --DRIVER
            GotoPos = vector3(3275.29, -712.63, 43.25),         --GO TO PRISON DIRECTION
            ArrivePos = vector4(3277.11, -713.9, 43.4, 287.89), -- AFTER SCENE PLAYER IS TELEPORTED IN THE DOCS AND WILL WALK UP INSIDE THE PRISON
        },

        Npc = { --NPCS THAT SPAWN AT THE DOCS IN SAINT DENIS ADD OR REMOVE AS YOU WISH
            {
                Model = "S_M_M_AMBIENTSDPOLICE_01",
                Weapon = "WEAPON_REPEATER_CARBINE",
                Position = vector4(2930.97, -1234.17, 42.31, 93.12),
                Name = "Police Officer : Jones",
            },
            {
                Model = "S_M_M_AMBIENTSDPOLICE_01",
                Weapon = "WEAPON_REPEATER_CARBINE",
                Position = vector4(2930.73, -1238.78, 42.34, 45.39),
                Name = "Police Officer : Beans",
            },
            {
                Model = "A_M_M_UniBoatCrew_01",
                Weapon = false,
                Position = vector4(2947.88, -1235.33, 42.47, 80.03),
                Name = "Boat Driver : Tenet",
                BoatDriver = true, -- IMPORTANT THIS IS THE NPC YOU NEED TO FOCUS TO GET OPTIONS
            }
        },

        Blip = {
            Enable = true,
            Name = "River Crossing", -- and prompt name
            Sprite = "blip_special_series_1",
            ColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
            ColorClose = "BLIP_MODIFIER_MP_COLOR_2",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",

        },
    },
    { -- SISIKA PENITENTIARY, THIS IS THE PRISON DOCS TO ALLOW POLICE TO GO BACK TO LAND, FOR PLAYERS THEY WILL BE AUTO TELEPORTED TO THE DOCS WITH A SCENE
        Position = vector3(3275.29, -712.63, 43.25),

        Scene = {
            Spawn = vector4(3265.26, -713.98, 40.27, 83.87),
            Model = "rowboat",
            PlayerBoatModel = "boatsteam02x", -- MODEL WHEN PLAYER REQUESTS MANUALY BOAT
            NpcModel = "a_m_m_valtownfolk_01",
            GotoPos = vector3(2949.25, -1233.52, 42.47),
            ArrivePos = vector3(2949.25, -1233.52, 42.47), -- AFTER SCENE PLAYER IS TELEPORTED IN THE DOCS AND WILL SPAWN IN THE DOCS IN SAINT DENIS
        },

        Npc = {
            {
                Model = "S_M_M_AMBIENTSDPOLICE_01",
                Weapon = "WEAPON_REPEATER_CARBINE",
                Position = vector4(3278.35, -709.72, 43.4, 180.79),
                Name = "Sisika Guard : Jones",

            },
            {
                Model = "S_M_M_AMBIENTSDPOLICE_01",
                Weapon = "WEAPON_REPEATER_CARBINE",
                Position = vector4(3285.76, -713.58, 43.38, 8.26),
                Name = "Sisika Guard : Smith",
            },
            {

                Model = "A_M_M_UniBoatCrew_01",
                Weapon = false,
                Position = vector4(3274.99, -712.77, 43.25, 266.69),
                Name = "Sisika Guard : Smith",
                BoatDriver = true,
            },
        },

        Blip = {
            Enable = true,
            Name = "Sisika boat station", -- and prompt name
            Sprite = "blip_special_series_1",
            ColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
            ColorClose = "BLIP_MODIFIER_MP_COLOR_2",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",
        },
    },
    -- YOU CAN ADD MORE POINTS HERE TO TRAVEL TO SISIKA PENITENTIARY
    {                                                           -- ST Denis
        Position = vector3(-691.75, -1244.85, 43.3),            -- menu ,blip
        Scene = {
            Spawn = vector4(-689.65, -1247.87, 40.28, 269.67),  -- model position to spawn
            Model = "rowboat",                                  -- YOU MUST ADD A BOAT THAT ALLOWS PLAYERS TO SIT IN THE BACK
            PlayerBoatModel = "boatsteam02x",                   -- MODEL WHEN PLAYER REQUESTS MANUALY BOAT
            NpcModel = "a_m_m_valtownfolk_01",                  --DRIVER
            GotoPos = vector3(3275.29, -712.63, 43.25),         --GO TO PRISON DIRECTION
            ArrivePos = vector4(3277.11, -713.9, 43.4, 287.89), -- AFTER SCENE PLAYER IS TELEPORTED IN THE DOCS AND WILL WALK UP INSIDE THE PRISON
        },

        Npc = { --NPCS THAT SPAWN AT THE DOCS IN SAINT DENIS ADD OR REMOVE AS YOU WISH
            {
                Model = "S_M_M_AMBIENTSDPOLICE_01",
                Weapon = "WEAPON_REPEATER_CARBINE",
                Position = vector4(-702.98, -1241.12, 44.77, 101.5),
                Name = "Police Officer : Jones",
            },
            {
                Model = "S_M_M_AMBIENTSDPOLICE_01",
                Weapon = "WEAPON_REPEATER_CARBINE",
                Position = vector4(-704.44, -1244.76, 44.77, 62.3),
                Name = "Police Officer : Beans",
            },
            {
                Model = "A_M_M_UniBoatCrew_01",
                Weapon = false,
                Position = vector4(-691.75, -1244.85, 43.3, 56.13),
                Name = "Boat Driver : Tenet",
                BoatDriver = true, -- IMPORTANT THIS IS THE NPC YOU NEED TO FOCUS TO GET OPTIONS
            }
        },

        Blip = {
            Enable = true,
            Name = "River Crossing", -- and prompt name
            Sprite = "blip_special_series_1",
            ColorOpen = "BLIP_MODIFIER_MP_COLOR_32",
            ColorClose = "BLIP_MODIFIER_MP_COLOR_2",
            Style = "BLIP_STYLE_AREA_TERRITORY_TRAIN",

        },
    },
}

-- when player gets released from jail when pressing the npc prompt to be released
Jail.ReleasePlayer = {
    OutsidePosition = vector3(3322.66, -707.94, 44.37),            -- teleport outside jail
    WalkToPosition = vector3(3276.27, -713.92, 43.39),             -- walk to docks
    BoatSpawnPosition = vector4(3047.79, -1026.36, 40.18, 157.24), -- boat spawn position
    DriveToPosition = vector4(2943.55, -1234.88, 42.48, 85.98),    -- LOCATION IS ALWAYS SAINT DENIS -- future update will allow choosing where to go
}
-- this will be auto added to a wanted board when player escaped a prison
Jail.Wanted = {
    Enable = true,         -- enable or disable wanted poster when player escapes
    PosterType = "wanted", -- must be the same as in Wanted.Config.Posters
    Description = "This Person has escaped from Sisika Penitentiary, last seen in Saint Denis, Approach with caution, Reward for information leading to capture.",
    Reward = 1000,
    PostedBy = "Sisika Penitentiary Chief",
    Towns = { -- towns where the wanted poster will be posted, they must exist in Wanted config
        "Valentine",
        "SaintDenis",
        "Blackwater",
        "Rhodes",
        "Armadillo",
        "Strawberry",
        "Tumbleweed",
    }
}


Jail.PrisonerOutfitItems = {
    "prisonoutfit", --ITEMS this detects female or male
    -- add more if you want
}

--THIS ARE THE CLOTHING THAT WILL BE ADDED TO PLAYERS WHEN THEY ARE IN JAIL
Jail.Outfits = {
    0x9925C067,
    0x485EE834,
    0x18729F39,
    0x3107499B,
    0x3C1A74CD,
    0x3F1F01E5,
    0x3F7F3587,
    0x49C89D9B,
    0x4A73515C,
    0x514ADCEA,
    0x5FC29285,
    0x79D7DF96,
    0x7A96FACA,
    0x877A2CF7,
    0x9B2C8B89,
    0xA6D134C6,
    0xE06D30CE,
    0x662AC34,
    0xAF14310B,
    0x72E6EF74,
    0xEABE0032,
    0x2026C46D,
    mp_male = {
        0x5BA76CCF,
        0x216612F0,
        0x1CCEE58D,
    },
    mp_female = {
        0x6AB27695,
        0x75BC0CF5,
        0x14683CDF,
    }
}
