Config.Bison = {
    {
        Label = _U('Bison'),
        LocationName = 'Big Valley',
        ImageDesc = 'map_camp_location_big_valley',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                     amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'beef', item = 'beef', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Bison Horn', item = 'bisonhorn', amount = 10 },	-- amount (number or { number_min, number_max }
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
                    { label = 'beef', item = 'beef', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Bison Horn', item = 'bisonhorn', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(-1651.36, 511.25, 114.75), -- Blip
        Part2 = {	-- Track Bear
            vector3(-1628.86, 538.48, 119.08),
            vector3(-1660.7, 536.02, 115.91),
            vector3(-1699.05, 506.84, 111.92),
            vector3(-1663.26, 478.27, 112.33),
            vector3(-1623.01, 468.13, 109.83),
            vector3(-1609.3, 499.04, 114.51),
            vector3(-1609.3, 499.04, 114.51),
        },
        Part3 = vector3(-1809.58, 443.94, 112.82), -- Blip
        Part4 = {   -- Poachers
            vector4(-1953.09, 433.89, 119.87, 280.3),
            vector4(-1963.53, 426.36, 120.91, 291.66),
            vector4(-1955.33, 447.85, 118.95, 288.63),
            vector4(-1951.69, 468.48, 117.23, 279.61),
            vector4(-1932.23, 443.0, 117.27, 271.22),
            vector4(-1939.98, 425.64, 118.94, 278.04),
            vector4(-1951.06, 411.88, 121.68, 304.27),
            vector4(-1968.36, 403.39, 122.18, 311.42),
        },
        Part5 = {
            Blip = vector3(-1954.68, 412.6, 121.84),
            Tracks = {  -- Bison
                vector3(-2000.63, 415.58, 121.71),
                vector3(-1982.5, 372.75, 124.86),
                vector3(-1961.52, 388.42, 123.97),
                vector3(-1949.46, 411.16, 121.6),
                vector3(-1954.72, 439.41, 119.45),
                vector3(-1930.31, 437.14, 117.25),
                vector3(-1921.51, 398.85, 117.73),
            }
        },
        Part6 = vector3(-2324.16, 603.33, 120.71), -- Blip
        Part7 = {
            LegendaryBison = vector4(-2321.1, 600.17, 120.46, 132.14),
            Bison = {
                vector3(-2319.04, 605.04, 119.55),
                vector3(-2315.36, 599.45, 119.16),
                vector3(-2320.24, 599.03, 119.4),
                vector3(-2329.91, 597.75, 119.94),
                vector3(-2338.74, 604.47, 120.56),
                vector3(-2339.48, 618.23, 121.04),
                vector3(-2330.43, 626.26, 120.68),
                vector3(-2312.9, 625.38, 119.87),
                vector3(-2302.3, 607.23, 118.81),
                vector3(-2311.0, 586.94, 118.75),
                vector3(-2337.1, 579.3, 119.82),
            },
        },
    },
}