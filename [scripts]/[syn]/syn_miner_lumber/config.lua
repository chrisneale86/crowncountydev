Config = {}

Config.startkey = 0xD9D0E1C0 -- (Spacebar)
Config.stopkey = 0x3B24C470 --  (F)
Config.swingkey = 0x07B8BEAF -- Left Click

Config.miningswings = { -- number of swings per node randomized between min and max
    min = 5,
    max = 10
}

Config.items = { -- different item types
    pickaxe = {draindura = 1,dura = 150, difficultymin = 4000, difficultymax = 2700, type = "mining"},
    Reinforced_Pickaxe = {draindura = 1,dura = 300, difficultymin = 4000, difficultymax = 2700, type = "mining"},
    hatchet = {draindura = 1,dura = 150, difficultymin = 4000, difficultymax = 2700, type = "lumber"},
    lumberaxe = {draindura = 1,dura = 300, difficultymin = 4000, difficultymax = 2700, type = "lumber"}
}

Config.jobs = {
    mining =  {"furymining.","wilsonco"},
    lumber = {"bwlumber","strwlumber","vallumber"},
    mine2 =  {"annesburgcoal"},
    mine3 =  {"MorrowsMiningCo"},
}

Config.rewardincrease = 4 -- reward increase for players with jobs listed above

Config.rewards = { -- rewards for players
    mining = {
        {name = "clay", label = "Clay", chance = 7, amount = 5},
        {name = "copper", label = "Copper", chance = 9, amount = 5},
        {name = "iron", label = "Iron", chance = 9, amount = 5},
        {name = "nitrite", label = "Nitrite", chance = 8, amount = 5},
        {name = "rock", label = "Rocks", chance = 8, amount = 3},
        {name = "salt", label = "Salt", chance = 8, amount = 5},
        {name = "goldnugget", label = "Gold Nuggets", chance = 2, amount = 3},
        {name = "sand", label = "Sand", chance = 7, amount = 5},
    },

    -- ✅ mine2 = Annesburg Coal Mine (coal ONLY)
    mine2 = {
        {name = "coal", label = "Coal", chance = 100, amount = 3},
    },
     mine3 = {   ---Annesburg Mine  MorrowsMiningCo
        {name = "clay", label = "Clay", chance = 7, amount = 5},
        {name = "copper", label = "Copper", chance = 9, amount = 5},
        {name = "iron", label = "Iron", chance = 9, amount = 5},
        {name = "nitrite", label = "Nitrite", chance = 8, amount = 5},
        {name = "rock", label = "Rocks", chance = 8, amount = 3},
        {name = "salt", label = "Salt", chance = 8, amount = 5},
        {name = "goldnugget", label = "Gold Nuggets", chance = 2, amount = 3},
        {name = "sand", label = "Sand", chance = 7, amount = 5},
    },

    lumber = {
        {name = "sap", label = "Sap", chance = 6, amount = 5},
        {name = "wood", label = "Soft Wood", chance = 8, amount = 5},
        {name = "hwood", label = "Hard Wood", chance = 8, amount = 5},
        {name = "rubber", label = "Rubber", chance = 5, amount = 3},
        {name = "fibers", label = "Fibers", chance = 6, amount = 3},
        {name = "pulp", label = "Pulp", chance = 6, amount = 3},
    },
}