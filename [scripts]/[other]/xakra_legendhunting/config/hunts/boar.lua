Config.Boar = {
    {
        Label = _U('Boar'),
        LocationName = "Hennigan's Stead",
        ImageDesc = 'map_camp_location_hannigans_stead',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'pork', item = 'pork', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'boarMusk', item = 'boarmusk', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
            {	-- REWARD 2
                currency = { 
                   type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'pork', item = 'pork', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'boarMusk', item = 'boarmusk', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(-1700.15, -2391.46, 44.09), -- Blip
        Part2 = {	-- Track Boar
            vector3(-1701.84, -2391.75, 44.04),
            vector3(-1723.33, -2411.38, 42.32),
            vector3(-1742.23, -2378.6, 42.31),
            vector3(-1717.53, -2344.82, 42.06),
            vector3(-1697.84, -2358.07, 42.16),
            vector3(-1671.69, -2373.78, 42.24),
            vector3(-1676.79, -2414.99, 43.92),
        },
        Part3 = {
            Blip = vector3(-1967.96, -2705.78, 67.78),
            Tracks = {
                vector3(-1978.41, -2694.83, 66.21),
                vector3(-1963.61, -2694.73, 66.25),
                vector3(-1972.86, -2707.89, 67.01),
                vector3(-1985.44, -2715.7, 67.24),
                vector3(-1966.06, -2721.93, 67.28),
                vector3(-1966.46, -2735.62, 68.18),
                vector3(-1948.53, -2743.06, 68.75),
                vector3(-1971.28, -2734.46, 68.11),
                vector3(-1969.04, -2704.32, 68.65),
            },
        },
        Part4 = vector3(-2177.41, -2751.82, 50.39), -- Blip
        Part5 = {   -- Poachers
            vector4(-2085.92, -2816.81, 41.76, 102.69),
            vector4(-2089.67, -2838.2, 31.4, 49.87),
            vector4(-2097.57, -2850.72, 28.16, 33.27),
            vector4(-2073.11, -2839.03, 30.03, 71.91),
            vector4(-2079.66, -2811.63, 43.69, 109.56),
            vector4(-2098.03, -2877.53, 22.15, 11.02),
            vector4(-2098.12, -2854.94, 27.03, 51.52),
            vector4(-2065.25, -2843.11, 27.18, 105.75),
            vector4(-2105.1, -2811.64, 38.14, 88.51),
        },
        Part6 = vector3(-1875.46, -2894.11, 4.09), -- Blip
        Part7 = {   -- Legendary Boar
            vector4(-1836.93, -2897.74, 0.89, 80.41),
            vector4(-1848.4, -2866.78, 3.83, 273.08),
            vector4(-1887.63, -2835.13, 18.32, 160.66),
            vector4(-1838.02, -2914.85, -0.93, 118.37),
            vector4(-1864.25, -2933.73, -1.06, 95.4),
            vector4(-1881.48, -2913.12, 1.14, 54.33),
        },
    },
}