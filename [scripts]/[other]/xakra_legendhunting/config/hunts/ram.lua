Config.Ram = {
    {
        Label = _U('Ram'),
        LocationName = 'Rio bravo',
        ImageDesc = 'map_camp_location_rio_bravo',
        Rewards = {
            {	-- REWARD 1
                currency = { 
                    type = 0,	-- 0 = money, 1 = gold, 2 = rol
                    label = '$',
                    amount = { 160, 350 },	-- number,{ number_min, number_max } or false (disable reward currency)
                },
                items = {
                    { label = 'Mutton', item = 'Mutton', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Ramhorn', item = 'ramhorn', amount = 10 },	-- amount (number or { number_min, number_max }
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
                    { label = 'Mutton', item = 'Mutton', amount = { 20, 35 } },	-- amount (number or { number_min, number_max }
                    { label = 'Ramhorn', item = 'ramhorn', amount = 10 },	-- amount (number or { number_min, number_max }
                    -- { label = 'Example', item = 'example', amount = 10 },	-- amount (number or { number_min, number_max }
                },
            },
        },
        Part1 = vector3(-4719.47, -3311.12, 21.81), -- Blip
        Part2 = {	-- Big Horn Ram
            vector3(-4728.23, -3316.85, 20.2),
            vector3(-4766.31, -3306.08, 19.92),
            vector3(-4741.94, -3336.46, 10.77),
            vector3(-4680.47, -3348.95, 13.7),
            vector3(-4671.85, -3315.79, 29.21),
            vector3(-4700.3, -3309.03, 27.59),
            vector3(-4723.4, -3279.21, 11.44),
        },
        Part3 = vector3(-4374.0, -3578.21, 34.04), -- Blip
        Part4 = {   -- Poachers
            vector4(-4304.8, -3654.58, 43.51, 29.91),
            vector4(-4294.27, -3642.37, 43.35, 32.27),
            vector4(-4282.19, -3634.06, 44.2, 29.06),
            vector4(-4266.69, -3622.33, 47.98, 36.42),
            vector4(-4257.16, -3611.93, 49.23, 55.82),
            vector4(-4374.67, -3641.78, 51.65, 351.18),
            vector4(-4396.81, -3641.4, 53.63, 329.72),
            vector4(-4328.54, -3660.91, 46.43, 47.89),
            vector4(-4344.0, -3664.53, 48.41, 26.25),
        },
        Part5 = vector3(-3977.82, -3694.0, 45.39), -- Blip
        Part6 = {   -- Legendary Ram
            vector4(-4001.82, -3656.61, 52.74, 282.7),
            vector4(-3977.4, -3701.47, 44.85, 240.3),
            vector4(-3914.53, -3685.97, 47.7, 348.98),
            vector4(-3884.66, -3639.67, 45.12, 82.74),
            vector4(-3904.98, -3692.08, 46.49, 60.8),
        },
    },
}