Restrictions = {}
-- in here you can restrict peds from spawning in certain areas like law peds or peds doing scenarios, they will avoid these areas

Restrictions.Config = {
    -- remove dead bodies from armadillo corpse pits
    AmbientePeds    = {
        {
            Label = "Armadillo Corpse Pit 4",                                                -- label
            Volume = {
                Radius = 10.0,                                                               -- radius of area to apply
                Coords = vector3(-3625.777587890625, -2568.837646484375, -16.26292610168457) -- center coords
            },
        },
        {
            Label = "Armadillo Corpse Pit 3",
            Volume = {
                Radius = 10.0,
                Coords = vector3(-3695.482177734375, -2664.159912109375, -15.25355911254882)
            },
        },
        {
            Label = "Armadillo Corpse Pit 2",
            Volume = {
                Radius = 10.0,
                Coords = vector3(-3614.69091796875, -2662.02978515625, -12.6602611541748)
            },
        },
        {
            Label = "Armadillo Corpse Pit 1",
            Volume = {
                Radius = 10.0,
                Coords = vector3(-3584.09326171875, -2608.383544921875, -15.7004280090332)
            },
        },
    },
    -- apply avoid these areas for npcs law or guards you can add this to police stations for annoying npcs or use it anywhere really
    PedRestrictions = {
        {
            Label = "Valentine Main",                     -- label
            Volume = {
                Radius = 5.0,                             -- radius of area to apply
                Coords = vector3(-275.32, 806.36, 119.43) -- center coords
            },
        },
        {
            Label = "BlackWater Main",
            Volume = {
                Radius = 6.0,
                Coords = vector3(-762.0, -1269.47, 44.12)
            },
        },
        {
            Label = "Rhodes Main",
            Volume = {
                Radius = 5.0,
                Coords = vector3(1360.88, -1301.51, 77.77)
            },
        },
        {
            Label = "ST Denis Main",
            Volume = {
                Radius = 15.0,
                Coords = vector3(2500.45, -1309.14, 49.0)
            },
        },
        {
            Label = "Strawberry  Main",
            Volume = {
                Radius = 5.0,
                Coords = vector3(-1811.04, -352.09, 164.66)
            },
        },
        {
            Label = "Annesburg  Main",
            Volume = {
                Radius = 5.0,
                Coords = vector3(2907.67, 1310.79, 44.94)
            },

        },
        {
            Label = "Armadillo  Main",
            Volume = {
                Radius = 5.0,
                Coords = vector3(-3624.86, -2601.88, -13.34)
            },
        },
        {
            Label = "Tumbleweed  Main",
            Volume = {
                Radius = 5.0,
                Coords = vector3(-5530.56, -2928.04, -1.36)
            },
        },
    }
}
