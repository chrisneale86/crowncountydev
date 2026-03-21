-- wanted
Wanted = {}

Wanted.BoardTittle = "WANTED BOARD"           -- the tittle of the board, you can change the font as well in .css file in html folder

Wanted.Command = "wantedboard"                -- this command is only for bounty hunters so they dont have to carry posters with them.

Wanted.AlertBountyHuntersAllLocations = false -- this enables bunty hunters to be alerted for any location instead of the location they are in. allowing you to use one job for bounty hunters

Wanted.Config = {

    Valentine = {
        WantedBoardPos = vector3(-269.72, 807.3, 119.33), -- the position of the board
        PromptName = "Wanted Board",                      -- the prompt name
        BountyHunterJob = { "ValBountyHunter" },          -- bounty hunters wll be notified when a bounty is added to the board
        Blip = {
            Enable = true,                                -- enable blip on map
            Sprite = "blip_wanted_poster",                -- the blip sprite
            Color = "COLOR_PURE_WHITE",                   -- the blip color
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",       -- the blip style
            Name = "Wanted Board",                        -- the blip name
        },

        Posters = {                                                                    -- this allows each town to have their own posters
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" }, -- the index wanted for example , will be used in the jail config to set the wanted poster so make sure you use the same name in there too
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = false,                        -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",   -- the prop model
            Pos = vector3(-269.72, 807.3, 119.33), -- the position of the prop
            Heading = 0.0,                         -- the heading of the prop
        }
    },
    Strawberry = {
        WantedBoardPos = vector3(-1809.29, -353.08, 164.71),
        PromptName = "Wanted Board",
        BountyHunterJob = { "StrBountyHunter" },
        Blip = {
            Enable = true,
            Sprite = "blip_wanted_poster",
            Color = "COLOR_PURE_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Name = "Wanted Board",
        },

        Posters = {
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" },
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = false,                        -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",   -- the prop model
            Pos = vector3(-269.72, 807.3, 119.33), -- the position of the prop
            Heading = 0.0,                         -- the heading of the prop
        }
    },
    Blackwater = {
        WantedBoardPos = vector3(-765.0303955078125, -1261.569091796875, 42.59341049194336),
        PromptName = "Wanted Board",
        BountyHunterJob = { "BlwBountyHunter" },
        Blip = {
            Enable = true,
            Sprite = "blip_wanted_poster",
            Color = "COLOR_PURE_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Name = "Wanted Board",
        },

        Posters = {
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" },
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = true,                                                            -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",                                      -- the prop model
            Pos = vector3(-765.0303955078125, -1261.569091796875, 42.59341049194336), -- the position of the prop
            Heading = -178.98069763183594,                                            -- the heading of the prop
        }

    },
    Rhodes = {
        WantedBoardPos = vector3(1353.51, -1304.41, 76.92),
        PromptName = "Wanted Board",
        BountyHunterJob = { "RhoBountyHunter" },
        Blip = {
            Enable = true,
            Sprite = "blip_wanted_poster",
            Color = "COLOR_PURE_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Name = "Wanted Board",
        },

        Posters = {
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" },
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = false,                        -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",   -- the prop model
            Pos = vector3(-269.72, 807.3, 119.33), -- the position of the prop
            Heading = 0.0,                         -- the heading of the prop
        }
    },
    SaintDenis = {
        WantedBoardPos = vector3(2513.5, -1312.11, 49.01),
        PromptName = "Wanted Board",
        BountyHunterJob = { "StdBountyHunter" },
        Blip = {
            Enable = true,
            Sprite = "blip_wanted_poster",
            Color = "COLOR_PURE_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Name = "Wanted Board",
        },

        Posters = {
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" },
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = false,                        -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",   -- the prop model
            Pos = vector3(-269.72, 807.3, 119.33), -- the position of the prop
            Heading = 0.0,                         -- the heading of the prop
        }
    },
    Armadillo = {
        WantedBoardPos = vector3(-3616.33349609375, -2601.06201171875, -14.72693729400634),
        PromptName = "Wanted Board",
        BountyHunterJob = { "ArmBountyHunter" },
        Blip = {
            Enable = true,
            Sprite = "blip_wanted_poster",
            Color = "COLOR_PURE_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Name = "Wanted Board",
        },

        Posters = {
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" },
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = true,                                                           -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",                                     -- the prop model
            Pos = vector3(-3616.33349609375, -2601.06201171875, -14.72693729400634), -- the position of the prop
            Heading = 114.71347045898438,                                            -- the heading of the prop
        }
    },
    Tumbleweed = {
        WantedBoardPos = vector3(-5526.2470703125, -2925.900634765625, -3.00027298927307),
        PromptName = "Wanted Board",
        BountyHunterJob = { "TblBountyHunter" },
        Blip = {
            Enable = true,
            Sprite = "blip_wanted_poster",
            Color = "COLOR_PURE_WHITE",
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",
            Name = "Wanted Board",
        },

        Posters = {
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" },
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = true,                                                          -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",                                    -- the prop model
            Pos = vector3(-5526.2470703125, -2925.900634765625, -3.00027298927307), -- the position of the prop
            Heading = 116.11225128173828,                                           -- the heading of the prop
        }
    },
    Annesburg = {
        WantedBoardPos = vector3(2912.541748046875, 1305.690673828125, 43.61747360229492), -- the position of the board
        PromptName = "Wanted Board",                                                       -- the prompt name
        BountyHunterJob = { "ValBountyHunter" },                                           -- bounty hunters wll be notified when a bounty is added to the board
        Blip = {
            Enable = true,                                                                 -- enable blip on map
            Sprite = "blip_wanted_poster",                                                 -- the blip sprite
            Color = "COLOR_PURE_WHITE",                                                    -- the blip color
            Style = "BLIP_STYLE_FRIENDLY_ON_RADAR",                                        -- the blip style
            Name = "Wanted Board",                                                         -- the blip name
        },

        Posters = {                                                                    -- this allows each town to have their own posters
            wanted = { Img = "WANTED.jpg", desc = "Dead or Alive", title = "REWARD" }, -- the index wanted for example , will be used in the jail config to set the wanted poster so make sure you use the same name in there too
            reward = { Img = "REWARD.jpg", desc = "Capture Alive", title = "REWARD" },
            missing = { Img = "MISSING.pnj", desc = "Missing person", title = "REWARD" },
            thieve = { Img = "THIEVE.jpg", desc = "Caputre Thieve", title = "REWARD" },
            -- add more if you want as long the type in DB is the same as here
        },
        Prop = {
            Enable = true,                                                          -- enable prop on the board
            Model = "mp005_p_mp_bountyboard02x",                                    -- the prop model
            Pos = vector3(2912.541748046875, 1305.690673828125, 43.61747360229492), -- the position of the prop
            Heading = 65.63545989990234,                                            -- the heading of the prop
        }
    },

    -- add more towns
}
