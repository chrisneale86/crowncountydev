Config.Buck = {
    {
        Label = _U('Buck'),
        LocationName = 'Roanoke Ridge',
        ImageDesc = 'map_camp_location_roanoke_ridge',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'Venison', item = 'venison', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Buck Antlers', item = 'legbucks1', amount = 10 },	-- amount (number or { number_min, number_max }
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
                    { label = 'Venison', item = 'venison', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Buck Antlers', item = 'legbucks1', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(2701.07, 1911.24, 113.46), -- Blip
        Part2 = {	-- DEER
            vector3(2708.95, 1969.11, 123.93),
            vector3(2714.26, 1923.89, 120.25),
            vector3(2746.72, 1896.98, 126.76),
            vector3(2730.25, 1884.41, 115.94),
            vector3(2678.49, 1936.57, 102.83),
            vector3(2653.9, 1879.29, 97.7),
            vector3(2715.82, 1881.83, 112.05),
        },
        Part3 = vector3(2527.51, 2018.44, 139.44), -- Blip
        Part4 = {
            Snipers = {
                vector4(2479.6, 2062.82, 163.97, 236.19),
                vector4(2464.69, 2040.31, 165.25, 262.01),
                vector4(2476.37, 2021.21, 167.29, 269.71),
                vector4(2495.25, 2008.15, 162.34, 314.16),
                vector4(2504.0, 2073.98, 160.33, 198.91),
            },
            PHorses = {
                vector4(2521.54, 2101.1, 166.48, 181.68),
                vector4(2503.74, 2101.52, 164.35, 159.52),
                vector4(2530.09, 2090.55, 163.72, 187.34),
                vector4(2499.85, 2093.65, 161.05, 163.57),
                vector4(2460.51, 2072.75, 164.84, 139.75),
                vector4(2465.88, 2062.66, 158.99, 216.63),
            },
        },
        Part5 = vector3(2291.74, 2080.61, 201.03), -- Blip
        Part6 = {   -- Legendary Buck
            vector3(2272.7, 2051.06, 208.1),
            vector3(2294.91, 2048.41, 207.35),
            vector3(2318.18, 2059.63, 207.26),
            vector3(2327.46, 2081.88, 211.53),
            vector3(2316.66, 2099.48, 210.64),
            vector3(2261.13, 2100.96, 210.55),
        },
    },
}