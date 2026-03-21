--stables
Stables = {}

--[[
    --ATRIBUTE POINTS INDEX
    --SET_ATTRIBUTE_BASE_RANK
    -- index, point
    PA_HEALTH, 0
    PA_STAMINA, 1
    PA_SPECIALABILITY, 2
    PA_COURAGE, 3
    PA_AGILITY, 4
    PA_SPEED, 5
    PA_ACCELERATION, 6
    PA_BONDING, 7
    SA_HUNGER, 8
    SA_FATIGUED, 9
    SA_INEBRIATED, 10
    SA_POISONED, 11
    SA_BODYHEAT, 12
    SA_BODYWEIGHT, 13
    SA_OVERFED, 14
    SA_SICKNESS, 15
    SA_DIRTINESS,  16
    SA_DIRTINESSHAT, 17
    MTR_STRENGTH, 18
    MTR_GRIT, 19
    MTR_INSTINCT,  20
    PA_UNRULINESS, 21
    SA_DIRTINESSSKIN 22
]]

-- horses and wagons have inventory if horses disabled then only works for wagons
Stables.Controls = {
    Tricks = `INPUT_PC_FREE_LOOK`,               -- left alt makes horse life on 2 legs
    Flee = `INPUT_HORSE_COMMAND_FLEE`,           -- you cant change this
    Call = `INPUT_WHISTLE`,                      -- H
    Inventory = `INPUT_OPEN_SATCHEL_HORSE_MENU`, -- B you cant change this
}

Stables.Config = {

    Valentine = {
        MenuPos = vector3(-290.56, 824.44, 119.47),                 -- menu position
        ModelWagonSpawn = vector4(-285.53, 828.58, 119.79, 291.69), -- wagon spawn position
        ModelHorseSpawn = vector4(-287.67, 821.87, 119.33, 251.33), -- horse spawn position
        ModelWagonPark = vector3(-285.53, 828.58, 119.79),          -- wagon park position
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(-290.56, 824.44, 119.47),
            Heading = 242.06,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },

    },
    Strawberry = {
        MenuPos = vector3(-1803.51, -342.83, 164.9),
        ModelWagonSpawn = vector4(-1800.49, -352.12, 164.14, 202.12),
        ModelHorseSpawn = vector4(-1804.82, -344.35, 164.72, 245.5),
        ModelWagonPark = vector3(-1800.49, -352.12, 164.14),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(-1803.51, -342.83, 164.9),
            Heading = 186.96,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },

    },
    Blackwater = {
        MenuPos = vector3(-763.43, -1225.81, 43.54),
        ModelWagonSpawn = vector4(-766.83, -1223.16, 43.54, 89.14),
        ModelHorseSpawn = vector4(-766.83, -1223.16, 43.54, 89.14),
        ModelWagonPark = vector3(-769.27, -1223.11, 43.54),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(-763.43, -1225.81, 43.54),
            Heading = 26.16,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },


    },

    Rhodes = {

        MenuPos = vector3(1368.94, -1294.02, 76.88),
        ModelWagonSpawn = vector4(1366.2, -1303.88, 76.91, 151.5),
        ModelHorseSpawn = vector4(1363.89, -1314.33, 77.13, 100.23),
        ModelWagonPark = vector3(1366.2, -1303.88, 76.91),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(1368.94, -1294.02, 76.88),
            Heading = 175.44,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },

    },

    SaintDenis = {

        MenuPos = vector3(2482.04, -1310.57, 48.93),
        ModelWagonSpawn = vector4(2482.61, -1317.51, 48.92, 258.04),
        ModelHorseSpawn = vector4(2485.84, -1305.69, 48.91, 179.78),
        ModelWagonPark = vector3(2482.61, -1317.51, 48.92),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(2482.04, -1310.57, 48.93),
            Heading = 266.55,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },

    },
    Armadillo = {
        MenuPos = vector3(-3618.61, -2594.04, -13.87),
        ModelWagonSpawn = vector4(-3621.19, -2591.4, -13.96, 307.27),
        ModelHorseSpawn = vector4(-3639.56, -2596.9, -13.89, 315.14),
        ModelWagonPark = vector3(-3621.19, -2591.4, -13.96),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(-3618.61, -2594.04, -13.87),
            Heading = 13.74,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },

    },
    Tumbleweed = {

        MenuPos = vector3(-5545.1, -2917.53, -1.32),
        ModelWagonSpawn = vector4(-5542.31, -2936.5, -1.6, 162.28),
        ModelHorseSpawn = vector4(-5544.92, -2925.24, -1.45, 243.63),
        ModelWagonPark = vector3(-5542.31, -2936.5, -1.6),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(-5545.1, -2917.53, -1.32),
            Heading = 232.6,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },

    },
    --vector4(2909.68, 1305.56, 44.88, 257.64)
    Annesburg = {
        MenuPos = vector3(2908.15, 1294.61, 45.14),
        ModelWagonSpawn = vector4(2904.19, 1287.59, 44.94, 196.5),
        ModelHorseSpawn = vector4(2909.86, 1299.11, 44.93, 345.05),
        ModelWagonPark = vector3(2904.19, 1287.59, 44.94),
        PromptName = "Police Stable",
        PromptParkName = "Park Wagon",
        UseHorseStables = true, -- if false you cant buy horses or use the horse stable
        UseWagonStables = true, -- if false you cant buy wagons or use the wagon stable
        Npc = {
            Enable = true,
            Pos = vector3(2908.15, 1294.61, 45.14),
            Heading = 251.29,
            Model = "re_horserace_males_01"
        },
        Wagons = {
            WagonBounty = {  -- inventory Id
                Model = "bountywagon01x",
                Price = 100, -- wagons must be purchased
                Label = "Enforced Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "Transporting prisioners across country is dangerous work, this wagon is equiped with a cage to keep them in place, make sure to have back up.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 }, -- ranks that can take this wagon , jobs are defined in Config.PoliceStations
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker", -- inventory name
                }
            },
            WagonPolice = {
                Model = "policewagon01x",
                Price = 100,
                Label = "Patrol Wagon",
                WagonName = "Patrol Wagon",
                Img = "wagon",
                Desc = "To be used When patrolling the the area, or for training purposes.",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            WagonPrison = {
                Model = "wagonPrison01x",
                Price = 100,
                Label = "Prisoner Wagon",
                WagonName = "Prisoner Wagon",
                Img = "wagon",
                Desc = "To be used When transporting prisioners to the jail,Be sure to have back up the way is long and danger is near by.",
                AllowedRanks = { 1, 2 },
                Inventory = {
                    Slots = 100,
                    Name = "Wagon Locker",
                }
            },
            -- add more
        },
        Horses = {
            HorsePolice = {
                Model = "A_C_Horse_MissouriFoxTrotter_AmberChampagne",
                HorseName = "Police Horse",
                Price = 100,
                Label = "Police Horse Fox Trotter",
                Img = "horse",
                Desc = "Horse",
                Gender = 0.0,                     -- 1.0 is female 0.0 is male
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                AtributePoints = {                -- allows horses do tricks XP
                    { index = 7, point = 14000 }, -- bonding
                    { index = 5, point = 14000 }, -- speed
                    { index = 1, point = 14000 }, -- stamina
                    { index = 0, point = 14000 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = {            -- Base rank is the xp see top of config for more
                    { index = 0, point = 800 }, -- health
                    { index = 1, point = 800 }, -- stamina
                    -- add more or remove
                },
                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Saddle",
                }
            },
            HorseBounty = {
                Model = "A_C_Horse_MissouriFoxTrotter_BlackTovero",
                HorseName = "Bounty Horse",
                Price = 100,
                Label = "Bounty Horse",
                Img = "horse",
                Desc = "Horse",
                AllowedRanks = { 0, 1, 2, 3, 4, 5, 6 },
                Gender = 0.0,                   -- 1.0 is female 0.0 is male
                AtributePoints = {
                    { index = 7, point = 700 }, -- bonding
                    { index = 5, point = 700 }, -- speed
                    { index = 1, point = 700 }, -- stamina
                    { index = 0, point = 700 }, -- health
                    -- add or change the atribute points look at the top of the config file
                },
                AtributeBaseRank = { -- Base rank is the xp see top of config for more
                    [0] = 400,       -- health
                    [1] = 400        -- stamina
                },

                Tack = {
                    0x0FAE487F, -- blanket
                    0x03B3AB08, -- stirup
                    0x15DB6032, --bags
                    0x219DE87C, -- sadle
                    0x0C48F261, -- bridlee
                },
                Inventory = {
                    Slots = 50,
                    Name = "Horse Sadle",
                }
            },
            -- add more
        },
    }
    -- add more towns
}
