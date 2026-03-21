Config = {}
Config.framework = "redemrp-reboot"--"redemrp" or "vorp" or "qbr" or "qbr2" or "redemrp-reboot" or "rsg"
Config.RefreshRate = 5
Config.RandomEventsAfterFinish = true

Config.EagleEyeFinishObject = true
Config.DisableLastKillerFromRandomSelection = true

Config.Prompts = {
    Prompt1 = 0x05CA7C52,
}

Config.Texts = {
    Prompt1 = "Collect",
    --Notification
    Killer = "Killer",
    Treasure = "Treasure",
    KillerHunt = "Killer Hunt",
    Finished = "Killer Hunt finished!",
    CollectReward = "Find and collect the reward!",
}

Config.Textures = {
    cross = {"scoretimer_textures", "scoretimer_generic_cross"},
    locked = {"menu_textures","stamp_locked_rank"},
    tick = {"scoretimer_textures","scoretimer_generic_tick"},
    money = {"inventory_items", "money_moneystack"},
    alert = {"menu_textures", "menu_icon_alert"},
}

Config.Killers = {
    -- USING custom_clown as true requires the Clown suit from CFX server: https://forum.cfx.re/t/free-clown-suit-halloween-special/5273104
    {
        name = "Killer 1",
        blip = {enable = true, sprite = -1031152097},
        start_time = {start = 22, finish = 4},
        pos = vector3(2727.115, -1197.583, 47.790),
        heading = 333.661,
        model = {model = `mp_male`, preset = 0, custom_clown = true}, 
        weapon = `WEAPON_MELEE_MACHETE`,
        no_critical_hits_damage = false,
        proof = {
            bullet = false,
            flame = false,
            explosion = false,
            melee = false,
            headshots = false,
        },
        health = 200,
        spawn_distance = 50.0,
        attack_distance = 10.0,
        reward_object = {pos = vector3(2727.220, -1197.136, 48.749), heading = 166.0, model = `mp009_s_mp_pickup_jewelrybag01x`},
        reward = {
            money = {min = 1, max = 10, multiplier = 1.0, chance = 100},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50, job = false},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50, job = {"job1", "job2"}},
            },
        },
    },
    {
        name = "Killer 2",
        blip = {enable = true, sprite = -1031152097},
        pos = vector3(2731.585, -1175.551, 48.282),
        heading = 312.048,
        model = {model = `mp_g_m_m_uniswamp_01`, preset = 0, custom_clown = false},
        weapon = `WEAPON_MELEE_MACHETE`,
        no_critical_hits_damage = true,
        proof = {
            bullet = false,
            flame = false,
            explosion = false,
            melee = true,
            headshots = true,
        },
        health = 500,
        spawn_distance = 50.0,
        reward_object = {pos = vector3(2730.992, -1175.689, 48.234), heading = 166.0, model = `mp009_s_mp_pickup_jewelrybag01x`},
        reward = {
            money = {min = 1, max = 10, multiplier = 1.0, chance = 100},
            items = {
                {id = "bread", label = "Bread", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50, job = false},
                {id = "water", label = "Water", texture = {"menu_textures", "log_gang_bag", "COLOR_GOLD"}, amount = {min = 1, max = 2}, chance = 50, job = {"job1", "job2"}},
            },
        },
    },
}