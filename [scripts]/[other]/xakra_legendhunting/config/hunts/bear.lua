
Config.Bear = {
    {
        Label = _U('Bear'),
        LocationName = 'Big Valley',
        ImageDesc = 'map_camp_location_big_valley',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	
                },
                items = {
                    { label = 'Big Game Meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Bear claws', item = 'bearc', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
            {	-- REWARD 2
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	
                },
                items = {
                    { label = 'Big Game Meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Bear claws', item = 'bearc', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(-1776.76, -183.02, 194.77),   -- Blip
        Part2 = {   -- Tracks
            vector3(-1778.28, -182.15, 194.88),
            vector3(-1767.69, -185.27, 194.6),
            vector3(-1755.83, -220.49, 185.45),
            vector3(-1788.37, -218.91, 189.63),
            vector3(-1803.64, -183.05, 202.69),
            vector3(-1788.41, -179.77, 201.96),
            vector3(-1811.94, -175.37, 209.02),
            vector3(-1824.0, -187.94, 206.8),
        },
        Part3 = {
            Blip = vector3(-2007.32, -314.19, 189.78),
            Tracks = {	-- Track sheep
                vector3(-2004.76, -275.64, 192.47),
                vector3(-2044.52, -318.33, 173.07),
                vector3(-1965.66, -312.53, 193.35),
                vector3(-1972.18, -272.67, 191.62),
                vector3(-2001.62, -313.6, 189.85),
            },
        },
        Part4 = {
            Blip = vector3(-2591.03, -208.91, 171.79),
            Tracks = {
                vector3(-2560.05, -183.4, 175.15),
                vector3(-2591.79, -180.25, 177.76),
                vector3(-2610.55, -207.6, 170.56),
                vector3(-2608.49, -228.95, 167.38),
                vector3(-2599.03, -234.1, 168.29),
                vector3(-2572.09, -222.82, 170.54),
                vector3(-2551.72, -204.68, 178.31),
                vector3(-2624.1, -250.75, 165.02),
                vector3(-2640.67, -228.85, 163.7),
                vector3(-2640.65, -208.96, 167.7),
            },
        },
        Part5 = vector3(-2321.02, 84.11, 221.09),   -- Blip
        Part6 = {
            LegendaryBear = vector4(-2324.89, 96.75, 221.39, 216.66),
            Bear1 = vector4(-2316.18, 90.21, 222.33, 105.79),
            Bear2 = vector4(-2326.0, 90.06, 220.96, 81.07),
            Bear3 = vector4(-2320.54, 85.04, 221.23, 3.34),
            Poachers = {
                vector4(-2344.32, 46.74, 217.54, 357.39),
                vector4(-2330.05, 65.27, 218.98, 357.39),
                vector4(-2307.14, 75.72, 229.94, 16.02),
                vector4(-2292.96, 73.25, 239.7, 356.04),
                vector4(-2338.33, 70.87, 215.71, 334.72),
                vector4(-2347.02, 71.79, 214.06, 311.07),
                vector4(-2298.16, 56.48, 227.89, 23.63),
                vector4(-2317.24, 29.69, 245.11, 12.58),
                vector4(-2367.45, 29.53, 218.21, 351.47),
                vector4(-2330.5, 112.93, 243.39, 187.57),
                vector4(-2338.4, 107.18, 242.27, 191.7),
                vector4(-2440.27, 109.12, 218.43, 220.39),
                vector4(-2381.48, 108.03, 232.77, 155.49),
                vector4(-2364.85, 94.63, 236.96, 205.0),
                vector4(-2304.42, 42.25, 245.89, 52.35),
            },
        },
    },
}