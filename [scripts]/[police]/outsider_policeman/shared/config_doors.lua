-- doors
Doors = {}
-- if true doors will be done in your doorlocks script. so ignore anything about doors here. you will loose the nice animation
-- you can copy the ids to vorp door locks for sisika etc. vorp_doorlocks is best has lockpick features
Doors.UseOtherDoorLock = false

Doors.AllowPoliceToOpenAllDoors = false -- IF FALSE ONLY ALLOWED RANKS CAN OPEN DOORS OF THEIR STATION, IF TRUE POLICE CAN OPEN ALL DOORS FROM ANY STATION

Doors.UseAnimAdvanced = false           -- will position player outside cell to close door better if false it wont position player and will allow to put your self inside cell and cllose it

-- ALL DOORS OF STATIONS AND SISIKA ARE HANDLE HERE
Doors.Config = {

    Annesburg = {
        [2212368673] = {
            PromptName   = "Front Door", -- front left door prompt name
            DoorModel    = "ann_jail_main_door_01",
            DoorCoords   = vector3(2911.140625, 1309.8092041016, 43.928840637207),
            DoorState    = 0,    -- initial door state 0 = unlocked, 1 = locked
            DoorDistance = 1.5,  -- distance to interact with door
            Lockpick     = true, -- can this door be locked picked?
            RanksAllowed = { 0, 1, 2 },
        },

        [1657401918] = { -- Jail cell
            PromptName = "Jail Cell 1",
            DoorModel = "ann_jail_cell_door_01",
            DoorCoords = vector3(2902.9602050781, 1310.8717041016, 43.935844421387),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x", -- dont change this
            LockPos = vector3(2903.477783203125, 1312.00537109375, 44.96082305908203),
        },
        [1502928852] = { -- Jail cell
            PromptName = "Jail Cell 2",
            DoorModel = "ann_jail_cell_door_01",
            DoorCoords = vector3(2904.2734375, 1314.3405761719, 43.935844421387),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x", -- dont change this
            LockPos = vector3(2904.791015625, 1315.47412109375, 44.96082305908203)
        },
    },
    Valentine = { -- town must exist in config.Lua
        [`DOOR_VAL_JAIL_FRONT`] = {
            PromptName = "Front Door",
            DoorModel = "p_door_val_jail02x",
            DoorCoords = vector3(-276.01260375977, 802.59106445313, 118.41165161133),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true, -- NOT WORKING YET
            RanksAllowed = { 0, 1, 2 },
        },
        [`DOOR_VAL_JAIL_BACK`] = {
            PromptName   = "Back Door", -- front left door prompt name
            DoorModel    = "p_door_val_jail02x",
            DoorCoords   = vector3(-275.84475708008, 812.02703857422, 118.41483306885),
            DoorState    = 1,    -- initial door state 0 = unlocked, 1 = locked
            DoorDistance = 1.5,  -- distance to interact with door
            Lockpick     = true, -- can this door be locked picked?
            RanksAllowed = { 0, 1, 2 },
        },
        -- cells
        [1508776842] = { -- Back Jail cell
            PromptName = "Back Jail Door",
            DoorModel = "p_door_val_jail_cell02x",
            DoorCoords = vector3(-270.76641845703, 810.02648925781, 118.39580535889),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },
        [`DOOR_VAL_JAIL_CELL_03`] = { -- Jail cell 1
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-272.05209350586, 808.25830078125, 118.36851501465),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x", -- dont change this
            LockPos = vector3(-272.05209350586, 808.25830078125, 118.36851501465),
        },
        [`DOOR_VAL_JAIL_CELL_02`] = { -- Jail cell 2
            PromptName = "Jail Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-273.46432495117, 809.96606445313, 118.36823272705),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x", -- dont change this
            LockPos = vector3(-273.46432495117, 809.96606445313, 118.36823272705),
        },
        [`DOOR_VAL_JAIL_CELL_01`] = { -- Jail cell 3
            PromptName = "Front Jail Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-275.02328491211, 808.27404785156, 118.36856842041),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x", -- dont change this
            LockPos = vector3(-274.896, 808.0374, 119.396),
        },
    },
    Strawberry = {
        [1821044729] = {
            PromptName = "Front Door",
            DoorModel = "p_door_val_bank02",
            DoorCoords = vector3(-1806.6751708984, -350.31280517578, 163.6475982666),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [1514359658] = {
            PromptName = "Back Door",
            DoorModel = "p_door37x",
            DoorCoords = vector3(-1812.6691894531, -345.08489990234, 163.6475982666),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },
        [902070893] = {
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-1814.400390625, -353.14709472656, 160.44180297852),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-1815.0006103515625, -354.2392578125, 161.46096801757812),
        },
        [1207903970] = {
            PromptName = "Jail Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-1812.0101318359, -351.92095947266, 160.46839904785),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-1810.918212890625, -352.521240234375, 161.49261474609375),
        }


    },
    Blackwater = {

        [2810801921] = {
            PromptName = "Back Door",
            DoorModel = "p_door34x",
            DoorCoords = vector3(-769.13708496094, -1268.7451171875, 43.0400390625),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [3410720590] = {
            PromptName = "Front Door",
            DoorModel = "p_door_bla_jail_r_01x",
            DoorCoords = vector3(-757.04217529297, -1268.4851074219, 43.068603515625),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 3821185084, -- if is double door then add the door next to it to be opened at the same time
        },
        [3821185084] = {
            PromptName = "Front Door",
            DoorModel = "p_door_bla_jail_l_01x",
            DoorCoords = vector3(-757.04211425781, -1269.9234619141, 43.068630218506),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 3410720590, -- if is double door then add the door next to it to be opened at the same time
        },

        [2167775834] = { -- Jail cell 1
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-763.52783203125, -1262.4608154297, 43.023273468018),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-763.6102905273438, -1263.704345703125, 44.04821014404297),
        },

        [2514996158] = { -- Jail cell 2
            PromptName = "Jail Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-765.8610229492188, -1264.705078125, 43.02326583862305),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-765.7782592773438, -1263.4609375, 44.0482063293457),
        }

    },
    Rhodes = {

        [1614494720] = {
            PromptName = "Back Door",
            DoorModel = "p_door04x",
            DoorCoords = vector3(1359.0979003906, -1297.5343017578, 76.787612915039),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [349074475] = {
            PromptName = "Front Door",
            DoorModel = "p_doorrhosheriff02x",
            DoorCoords = vector3(1359.7102050781, -1305.9600830078, 76.768424987793),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [1878514758] = {
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(1357.3343505859, -1302.4530029297, 76.760185241699),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(1357.837158203125, -1301.3125, 77.78528594970703),
        }

    },
    SaintDenis = {

        [417663242] = {
            PromptName = "Front Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2516.1442871094, -1309.9276123047, 47.952571868896),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1611175760, -- if is double door then add the door next to it to be opened at the same time
        },

        [1611175760] = {
            PromptName = "Front Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2516.14453125, -1307.7248535156, 47.952571868896),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 417663242, -- if is double door then add the door next to it to be opened at the same time
        },
        -- inside doors

        [1879655431] = {
            PromptName = "Front A Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2510.9077148438, -1305.4116210938, 47.957168579102),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 3124713594, -- if is double door then add the door next to it to be opened at the same time
        },

        [3124713594] = {
            PromptName = "Front A Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2510.9077148438, -1307.1413574219, 47.957168579102),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1879655431, -- if is double door then add the door next to it to be opened at the same time
        },

        [3430284519] = {
            PromptName = "Front B Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2510.9077148438, -1310.4840087891, 47.957168579102),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 3601535313, -- if is double door then add the door next to it to be opened at the same time
        },

        [3601535313] = {
            PromptName = "Front B Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2510.9077148438, -1312.2154541016, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 3430284519, -- if is double door then add the door next to it to be opened at the same time
        },

        [1020479727] = {
            PromptName = "Back A Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2508.3376464844, -1317.2796630859, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 603068205, -- if is double door then add the door next to it to be opened at the same time
        },

        [603068205] = {
            PromptName = "Back A Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2506.6062011719, -1317.2796630859, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1020479727, -- if is double door then add the door next to it to be opened at the same time
        },

        [2503834054] = {
            PromptName = "Back B Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2495.9533691406, -1317.2827148438, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 305296302, -- if is double door then add the door next to it to be opened at the same time
        },

        [305296302] = {
            PromptName = "Back B Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2497.6848144531, -1317.2827148438, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 2503834054, -- if is double door then add the door next to it to be opened at the same time
        },

        [1992193795] = {
            PromptName = "Back C Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2493.3725585938, -1311.9565429688, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1694749582, -- if is double door then add the door next to it to be opened at the same time
        },

        [1694749582] = {
            PromptName = "Back C Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2493.3725585938, -1310.2252197266, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1992193795, -- if is double door then add the door next to it to be opened at the same time
        },

        [1979938193] = {
            PromptName = "Back D Door",
            DoorModel = "p_door_nbx_doc01x_l",
            DoorCoords = vector3(2493.3725585938, -1307.4184570313, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1674105116, -- if is double door then add the door next to it to be opened at the same time
        },

        [1674105116] = {
            PromptName = "Back D Door",
            DoorModel = "p_door_nbx_doc01x_r",
            DoorCoords = vector3(2493.3725585938, -1305.6870117188, 47.952571868896),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1979938193, -- if is double door then add the door next to it to be opened at the same time
        },

        [1711767580] = {
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(2502.4296875, -1307.8559570313, 47.953273773193),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(2503.673095703125, -1307.9384765625, 48.97825241088867),
        },

        [2515591150] = {
            PromptName = "Jail Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(2503.638671875, -1309.8763427734, 47.953273773193),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(2502.395263671875, -1309.7938232421875, 48.97825241088867),
        },

        [3365520707] = {
            PromptName = "Jail Cell 3",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(2498.5, -1307.8559570313, 47.953273773193),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(2499.74365234375, -1307.9384765625, 48.97825241088867),
        },

        [1995743734] = {
            PromptName = "Jail Cell 4",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(2499.7521972656, -1309.8763427734, 47.953273773193),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(2498.5087890625, -1309.7938232421875, 48.97825241088867),
        },

    },
    Armadillo = {

        [66424668] = {
            PromptName = "Front Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(-3624.6982421875, -2605.4157714844, -14.351517677307),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [4016307508] = {
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-3620.9931640625, -2600.2490234375, -14.351593017578),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-3620.54248046875, -2601.410888671875, -13.32679748535156),
        },

        [4235597664] = {
            PromptName = "Jail Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-3619.1481933594, -2604.2065429688, -14.351593017578),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-3618.69677734375, -2605.368896484375, -13.32679748535156),
        },


    },
    Tumbleweed = {

        [2735269038] = {
            PromptName = "Front Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(-5527.6767578125, -2930.4975585938, -2.3662209510803),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [2444845424] = {
            PromptName = "Inside Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(-5533.3212890625, -2926.0886230469, -2.3663251399994),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
        },

        [2677989449] = {
            PromptName = "Jail Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-5531.462890625, -2921.751953125, -2.3601191043854),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-5531.01220703125, -2922.913818359375, -1.3351399898529),
        },

        [2984805596] = {
            PromptName = "Jail Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(-5532.9072265625, -2918.6538085938, -2.3601191043854),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = true,
            RanksAllowed = { 0, 1, 2 },
            Lock = "p_cs_lockjail01x",
            LockPos = vector3(-5532.45703125, -2919.815673828125, -1.3351399898529),
        },

    },
    -- add more towns
    Sisika = {
        --TOWERS AND ENTRANCE DOORS
        [2617210026] = {
            PromptName = "Back Door",
            DoorModel = "p_sis_frontgateb_l",
            DoorCoords = vector3(3325.8051757813, -705.54479980469, 43.383056640625),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 1121239638, -- if is double door then add the door next to it to be opened at the same time
        },
        [1121239638] = {
            PromptName = "Back Door",
            DoorModel = "p_sis_frontgateb_r",
            DoorCoords = vector3(3327.5732421875, -707.517578125, 43.383056640625),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 2617210026, -- if is double door then add the door next to it to be opened at the same time
        },
        [3984556459] = {
            PromptName = "Front Door",
            DoorModel = "p_sis_frontgateb_l",
            DoorCoords = vector3(3331.8154296875, -700.08587646484, 43.068531036377),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 906662604, -- if is double door then add the door next to it to be opened at the same time
        },
        [906662604] = {
            PromptName = "Front Door",
            DoorModel = "p_sis_frontgateb_r",
            DoorCoords = vector3(3333.5808105469, -702.05596923828, 43.068531036377),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
            DoubleDoor = 3984556459, -- if is double door then add the door next to it to be opened at the same time
        },
        [596497682] = {
            PromptName = "Main Front Jail Door",
            DoorModel = "p_door48x",
            DoorCoords = vector3(3350.991943, -644.946472, 44.537170),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [230271338] = {
            PromptName = "Main Back Jail Door",
            DoorModel = "p_door48x",
            DoorCoords = vector3(3350.563721, -648.003052, 44.537643),
            DoorState = 0,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        --metal doors
        [1803726739] = {                       --sisikatower5
            PromptName = "Tower central Door", -- not working door id doesnt exist need to replace with another door
            DoorModel = "p_door48x",
            DoorCoords = vector3(3366.479980, -680.435120, 45.636028),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [1378416582] = { --sisikatower1
            PromptName = "Tower 1 Door",
            DoorModel = "p_door48x",
            DoorCoords = vector3(3369.641846, -723.589355, 44.423378),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [711895122] = {
            PromptName = "Tower 2 Door",
            DoorModel = "p_door48x",
            DoorCoords = vector3(3407.346924, -677.658875, 45.639351),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [4253601415] = {
            PromptName = "Tower 3 Door",
            DoorModel = "p_door48x",
            DoorCoords = vector3(3384.534424, -639.446472, 45.644089),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [132244281] = {
            PromptName = "Tower 4 Door",
            DoorModel = "p_door48x",
            DoorCoords = vector3(3318.4599609375, -658.02001953125, 44.86999893188476),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        --CELL DOORS
        [2406235702] = {
            PromptName = "Cell 1",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3340.908447, -662.855042, 47.790314),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1570804412] = {
            PromptName = "Cell 2",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3336.768311, -663.949585, 47.789436),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2254398406] = {
            PromptName = "Cell 3",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3332.663330, -665.049438, 47.790314),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [4148143533] = {
            PromptName = "Cell 4",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3328.587402, -666.140808, 47.790314),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2517442265] = {
            PromptName = "Cell 5",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3341.176758, -659.920715, 47.789719),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1412135824] = {
            PromptName = "Cell 6",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3337.097412, -661.021057, 47.799717),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [890712729] = {
            PromptName = "Cell 7",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3332.998779, -662.13452, 47.799717),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2080255315] = {
            PromptName = "Cell 8",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3328.855713, -663.232666, 47.799717),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [662490642] = {
            PromptName = "Waiting Cell",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3325.836426, -661.487244, 44.786285),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        --SOLITARY CONFINMENT
        [2551648116] = {
            PromptName = "Solitary Confinment 1",
            DoorModel = "p_door_val_jail_cell02x",
            DoorCoords = vector3(3345.630859, -657.307922, 47.788280),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [3986970204] = {
            PromptName = "Solitary Confinment 2",
            DoorModel = "p_door_val_jail_cell02x",
            DoorCoords = vector3(3344.994141, -655.049255, 47.788280),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        --ELECTRIC CHAIR BUILDING
        [2591072101] = {
            PromptName = "Electric Chair Door",
            DoorModel = "p_door06x",
            DoorCoords = vector3(3354.872314, -713.45416, 44.055737),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        --MEDICAL BLOCK
        [2179292606] = {
            PromptName = "Medical Block Main Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3365.164551, -701.826965, 44.545605),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [523610381] = {
            PromptName = "Medical Block Back Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3374.066162, -702.687439, 44.545506),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [4267013128] = {
            PromptName = "Medical Block Middle Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3368.164063, -703.458740, 44.535507),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        -- SERVICES BLOCK
        [1743333398] = {
            PromptName = "Services Block Main Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3381.197754, -682.679688, 45.805664),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1307212933] = {
            PromptName = "Services Block Library Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(3384.758301, -684.909973, 45.805229),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [853083969] = {
            PromptName = "Services Block Post Office Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(3390.750977, -689.248108, 45.805229),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1448360114] = {
            PromptName = "Services Block Paper Fabric Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(3388.303223, -689.045593, 48.785191),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [3958068222] = {
            PromptName = "Services Block Bath Door",
            DoorModel = "p_door11x",
            DoorCoords = vector3(3385.996338, -691.807251, 48.785191),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        ---WORK WAREHOUSE BLOCK
        [2830674854] = {
            PromptName = "Services Block Main Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3378.376709, -660.780396, 45.805721),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1616014595] = {
            PromptName = "Services Block Shop Main Door 1",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3371.849121, -658.318909, 45.454914),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [892016309] = {
            PromptName = "Services Block Shop Main Door 2",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3371.849121, -658.318909, 45.454914),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1075328024] = {
            PromptName = "Services Block Shop Middle Door",
            DoorModel = "p_door13x",
            DoorCoords = vector3(3376.431152, -656.826538, 45.804745),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2435546083] = {
            PromptName = "Services Block Little Room Door",
            DoorModel = "p_door13x",
            DoorCoords = vector3(3377.379150, -654.105957, 45.805588),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [454805450] = {
            PromptName = "Services Block Middle Door 1",
            DoorModel = "p_door13x",
            DoorCoords = vector3(3381.016846, -654.990967, 45.806583),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2201040051] = {
            PromptName = "Services Block Middle Door Furnace",
            DoorModel = "p_door13x",
            DoorCoords = vector3(3392.192383, -672.162415, 45.809448),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1155653753] = {
            PromptName = "Services Block 2nd Floor Room Door",
            DoorModel = "p_door13x",
            DoorCoords = vector3(3392.190674, -672.165649, 48.821251),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        ---CELLS BUILDING --2nd floor
        [1180208480] = {
            PromptName = "2nd Floor Middle Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3345.116943, -665.424438, 50.796913),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2058120164] = {
            PromptName = "Director Office Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3337.520996, -663.018616, 50.796913),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2407956458] = {
            PromptName = "Director Room Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3333.573730, -664.994324, 50.796474),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [971832681] = {
            PromptName = "2nd Floor Room 1 Door",
            DoorModel = "p_door34x",
            DoorCoords = vector3(3344.298096, -660.613037, 50.793919),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [3441691111] = {
            PromptName = "2nd Floor Room 2 Door",
            DoorModel = "p_door34x",
            DoorCoords = vector3(3333.813477, -662.931580, 50.797668),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        ---CELLS BUILDING --1st floor
        [1020452154] = {
            PromptName = "1st Floor Room 1 Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3348.852295, -662.804138, 47.767624),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [4017963664] = {
            PromptName = "1st Floor Room 2 Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3345.152832, -665.374939, 47.776539),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        --BUILDING DOORS
        ---CELLS BUILDING ground floor
        [2317433188] = {
            PromptName = "Main Door 1",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3339.753174, -667.641174, 44.786285),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [3694157185] = {
            PromptName = "Main Door 2",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3337.627441, -668.207886, 44.786476),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [920892069] = {
            PromptName = "Entry Right Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3339.430176, -663.323486, 44.786285),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [578672858] = {
            PromptName = "Intermediaire Right Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3342.385010, -662.483459, 44.763107),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2895306683] = {
            PromptName = "Storage Door",
            DoorModel = "p_door_val_jail01x",
            DoorCoords = vector3(3347.139648, -663.273682, 44.790688),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [3378817498] = {
            PromptName = "Canteen Door",
            DoorModel = "p_door_val_jail01x",
            DoorCoords = vector3(3344.764404, -663.478088, 44.790688),
            DoorState = 0,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [3933851073] = {
            PromptName = "Entry Left Door",
            DoorModel = "p_door15x",
            DoorCoords = vector3(3333.316895, -664.813843, 44.786285),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2240503000] = {
            PromptName = "Investigation Door",
            DoorModel = "p_door34x",
            DoorCoords = vector3(3329.715576, -666.624207, 44.787041),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [650309963] = {
            PromptName = "Interrogation Door",
            DoorModel = "p_door34x",
            DoorCoords = vector3(3329.003662, -664.026978, 44.787041),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1760337117] = {
            PromptName = "Central Door",
            DoorModel = "p_door36x",
            DoorCoords = vector3(3330.397949, -661.265991, 44.786285),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1430817604] = {
            PromptName = "Room 1st Jail Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3328.041260, -660.397949, 44.763107),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [2896879042] = {
            PromptName = "Corridor 1st Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3333.610596, -657.747864, 44.773106),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1179119277] = {
            PromptName = "Corridor 2nd Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3346.351563, -654.368164, 44.773106),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },
        [1552791865] = {
            PromptName = "Corridor 3rd Door",
            DoorModel = "p_door_val_jail_cell01x",
            DoorCoords = vector3(3348.167969, -657.824890, 44.773106),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = false,
        },

        [3108061894] = {
            PromptName = "Electric chair room",
            DoorModel = "p_door09x",
            DoorCoords = vector3(3361.592773, -715.818970, 44.065735),
            DoorState = 1,
            DoorDistance = 1.5,
            RanksAllowed = { 0, 1, 2 },
            Lockpick = true,
        },
    },
}


-- IF YOU DONT USE THE MAP FROM YOURMAPS SISIKA THEN USE THIS CONFIG FOR THE DOORS
--[[
     Sisika = {
        -- sisika prison doors
        [2617210026] = {
            PromptName = "Back Left Door",
            DoorModel = "p_sis_frontgateb_l",
            DoorCoords = vector3(3325.8051757813, -705.54479980469, 43.383056640625),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [1121239638] = {
            PromptName = "Back Right Door",
            DoorModel = "p_sis_frontgateb_r",
            DoorCoords = vector3(3327.5732421875, -707.517578125, 43.383056640625),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [3984556459] = {
            PromptName = "Front Left Door",
            DoorModel = "p_sis_frontgateb_l",
            DoorCoords = vector3(3331.8154296875, -700.08587646484, 43.068531036377),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [906662604] = {
            PromptName = "Front Right Door",
            DoorModel = "p_sis_frontgateb_r",
            DoorCoords = vector3(3333.5808105469, -702.05596923828, 43.068531036377),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [3158090902] = {
            PromptName = "Main Front Jail Door",
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3350.991943, -644.946472, 44.537170),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [2381465602] = {
            PromptName = "Main Back Jail Door",
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3350.563721, -648.003052, 44.537643),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        --metal doors
        [1671882353] = {                       --sisikatower5
            PromptName = "Tower central Door", -- not working door id doesnt exist need to replace with another door
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3366.479980, -680.435120, 45.636028),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [2321822727] = {                 --sisikatower1
            PromptName = "Tower 1 Door", -- not working door id doesnt exist need to replace with another door
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3369.641846, -723.589355, 44.423378),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [2685529153] = {
            PromptName = "Tower 2 Door",
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3407.346924, -677.658875, 45.639351),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [4249790129] = {
            PromptName = "Tower 3 Door",
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3384.534424, -639.446472, 45.644089),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
        [1908638378] = {
            PromptName = "Tower 4 Door", -- not working door id doesnt exist need to replace with another door
            DoorModel = "p_doorlocked48a",
            DoorCoords = vector3(3318.4599609375, -658.02001953125, 44.86999893188476),
            DoorState = 1,
            DoorDistance = 1.5,
            Lockpick = false,
            RanksAllowed = { 0, 1, 2 },
        },
    },
 ]]
