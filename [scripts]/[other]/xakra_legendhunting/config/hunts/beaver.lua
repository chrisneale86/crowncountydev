
Config.Beaver = {
    {
        Label = _U('Beaver'),
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
                    { label = 'Stringy meat', item = 'stringy', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Beaver tail', item = 'beavertail', amount = 10 },	-- amount (number or { number_min, number_max }
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
                    { label = 'Stringy meat', item = 'stringy', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Beaver tail', item = 'beavertail', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(2331.2, 914.23, 72.29), -- Blip
        Part2 = {	-- Track Beaver
            vector3(2323.49, 902.11, 73.35),
            vector3(2319.01, 920.77, 73.54),
            vector3(2312.9, 929.63, 73.2),
            vector3(2305.31, 932.59, 72.96),
            vector3(2297.79, 903.35, 72.72),
            vector3(2312.54, 885.03, 73.48),
            vector3(2336.11, 881.26, 72.95),
            vector3(2349.04, 887.71, 73.07),
            vector3(2351.64, 898.0, 72.71),
            vector3(2353.61, 921.24, 72.96),
        },
        Part3 = vector3(2469.41, 820.82, 74.81), -- Blip
        Part4 = {   -- Poachers
            vector4(2509.86, 791.63, 68.76, 325.88),
            vector4(2502.4, 818.42, 71.29, 241.57),
            vector4(2524.38, 846.69, 79.11, 124.05),
            vector4(2526.83, 805.85, 73.91, 163.13),
            vector4(2527.55, 796.54, 73.78, 67.0),
            vector4(2519.53, 784.22, 70.82, 320.07),
            vector4(2517.41, 770.61, 73.48, 38.42),
            vector4(2545.9, 850.18, 80.13, 216.27),
            vector4(2591.17, 831.73, 83.27, 116.26),
            vector4(2542.2, 767.67, 74.86, 346.16),
            vector4(2500.09, 733.76, 73.16, 32.79),
            vector4(2547.95, 856.68, 80.51, 78.63),
            vector4(2535.84, 882.28, 81.41, 140.86)
        },
        Part5 = vector3(2442.33, 559.41, 65.98), -- Blip
        Part6 = {   -- Beavers
            vector3(2472.95, 548.28, 66.39),
            vector3(2472.32, 537.29, 64.12),
            vector3(2448.1, 533.43, 67.23),
            vector3(2433.24, 542.89, 68.29),
            vector3(2421.44, 550.41, 67.24),
            vector3(2429.56, 579.94, 67.21),
            vector3(2441.9, 588.87, 65.64),
            vector3(2456.35, 596.48, 65.77),
            vector3(2463.01, 583.45, 65.37),
            vector3(2465.16, 574.24, 67.05),
        },
    },
}