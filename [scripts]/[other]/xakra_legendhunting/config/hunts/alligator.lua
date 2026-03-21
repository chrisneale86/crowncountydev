Config.Alligator = {
    {
        Label = _U('Alligator'),
        LocationName = 'Bayou Nwa',
        ImageDesc = 'map_camp_location_bayou_nwa',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                     amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'BigGame meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Aligator Tooth', item = 'aligatorto', amount = 10 },	-- amount (number or { number_min, number_max }
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
                    { label = 'BigGame meat', item = 'biggame', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Aligator Tooth', item = 'aligatorto', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(2206.28, -552.42, 41.08),   -- Blip
        Part2 = {	-- DEER
            vector3(2168.68, -560.55, 41.72),
            vector3(2178.9, -579.58, 41.59),
            vector3(2188.68, -587.38, 41.27),
            vector3(2208.04, -564.24, 41.52),
            vector3(2243.22, -554.25, 41.66),
            vector3(2191.16, -518.97, 41.76)
        },
        Part3 = {
            Blip = vector3(2261.63, -867.78, 41.88),
            Tracks = {
                vector3(2265.3, -900.8, 42.05),
                vector3(2243.01, -903.79, 41.23),
                vector3(2235.91, -917.32, 41.64),
                vector3(2240.96, -881.65, 41.94),
                vector3(2222.98, -859.06, 41.66),
                vector3(2196.29, -846.59, 41.21),
                vector3(2201.91, -865.02, 41.45),
                vector3(2235.01, -818.67, 41.98),
                vector3(2270.75, -843.65, 41.73),
                vector3(2277.73, -830.41, 41.67),
                vector3(2297.06, -825.87, 41.54),
                vector3(2314.32, -854.84, 41.61),
            },
            AlligatorsCoords = {
                vector4(2286.74, -891.45, 40.56, 152.42),
                vector4(2290.62, -855.81, 41.42, 73.69),
                vector4(2251.64, -827.17, 40.38, 305.83),
                vector4(2214.12, -812.47, 41.66, 101.61),
                vector4(2198.45, -804.77, 41.35, 40.22),
                vector4(2209.37, -830.67, 40.78, 201.51),
                vector4(2231.24, -868.54, 41.55, 225.67),
                vector4(2253.19, -873.78, 41.69, 286.14),
                vector4(2200.9, -879.74, 40.53, 83.1),
            },
        },
        Part4 = vector3(2385.8, -794.47, 41.56),    -- Blip
        Part5 = {   -- Legendary alligator
            vector4(2335.61, -719.08, 40.79, 230.86),
            vector4(2426.91, -744.32, 40.78, 120.77),
            vector4(2391.6, -864.1, 40.66, 42.33),
            vector4(2344.7, -865.79, 40.57, 355.45),
            vector4(2325.64, -789.57, 40.18, 265.52),
            vector4(2339.64, -752.62, 41.75, 264.19),
        },
    },
}