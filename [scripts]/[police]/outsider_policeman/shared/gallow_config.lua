Gallow = {}

Gallow.UseGallowSystem = true -- set to false to disable the gallow system

-- hanging places
-- not all hanging places animations or objects will work Valentine and st denis will work

Gallow.Commands = { -- these commands will only be registered to the jobs in Config.Jobs
    RopePlayer = "rope_player",
    HangPlayer = "hang_player"
}

Gallow.Config = {

    Valentine = {
        Pos             = vector3(-314.2039794921875, 731.1035766601562, 120.67015075683594), -- location  of the starting anim pull lever
        Heading         = 111.15,                                                             -- anim heading
        Object1Pos      = vector3(-315.1255, 733.6245, 122.897),                              -- Invisible object to attach the rope to on the top of the wood board
        Object2Pos      = vector3(-315.075, 730.922, 119.6113),                               -- Noose position any position close to the player
        GallowObjectPos = vector3(-314.6394348144531, 733.6920166015625, 119.5727310180664),  -- trap door position
        GallowModel     = "s_gallowsstairs04x",
        LeverModel      = "s_gallowlevernbx01x",
        playerHangPos   = vector4(-315.14, 733.4, 120.65, 87.73),

    },

    SaintDenis = {
        Pos             = vector3(2690.65, -1113.53, 52.89),
        Heading         = 173.52, -- anim headin
        Object1Pos      = vector3(2688.435546875, -1113.9921875, 54.41373443603515),
        Object2Pos      = vector3(2690.287353515625, -1113.9696044921875, 51.77417755126953),
        GallowObjectPos = vector3(2688.245361328125, -1114.0650634765625, 51.80417251586914),
        GallowModel     = "s_gallowdoornbx01x",
        LeverModel      = "s_gallowlevernbx01x",
        playerHangPos   = vector4(2688.245361328125, -1114.0650634765625, 52.91, 173.52)
    },
    -- dont add more they wont work
}
