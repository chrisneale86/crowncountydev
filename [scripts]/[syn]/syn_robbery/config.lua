
Config = {}

Config.onesync = true
Config.adminwebhook = ""
Config.webhookavatar = "https://webstockreview.net/images/burglar-clipart-heinous-6.png"
Config.lockpin = 0xA65EBAB4 -- left arrow
Config.movepin = 0x6319DB71 -- up arrow
Config.engage = 0x760A9C6F -- Key: G
Config.animation = "WORLD_HUMAN_INSPECT" -- animation while lockpicking 
Config.diff = 3 -- 3 out of 10 times on fail lockpick will break (higher number higher difficulty- lockpick breaks easier)
Config.bandanarequired = false -- is a bandana required to start the robbery 
Config.norobjob = {"police","doctor"}-- jobs that cant trigger robberies 
Config.robberyblipsprite = 90287351
Config.lootboxsprite = -1357626643
Config.alertcancel = "gotalert"
Config.blipai = true -- add blips to ai enemies 
Config.nopolicestartcooldown = false -- set to true if you want robberies that require no police to be set on cool down when server starts
Config.personalcooldown = 60 -- 60 minutes for each player to be able to rob again (set to 0 for no cooldown)
-- minigame types: "safe","normal","lockpick" setting safe requires u to set combination between 0 and 99 nothing less or more 
-- {math.random(0,99),math.random(0,99)} is an example of a safe that has 2 combanations that are randomized between 0 and 99,


Config.robbery = { 
    ["Oil Rig"] = {	   
        pos = {x=480.8, y=663.8, z=117.4}, 
        distancecheck = 200, 
        cooldown = 60, -- in minutes 
        requiredpolice = 3, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'valentine', -- regional duty station cops 
        },
        npcinfo = {
            {x=494.94, y=682.86, z=117.37, weapon = `weapon_rifle_springfield`, model = "U_M_M_UNIONLEADER_01"},
            {x=496.8, y=680.34, z=121.03, weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=466.22, y=617.83, z=112.52, weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=511.82, y=611.25, z=111.02, weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=559.75, y=582.79, z=111.71, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=594.86, y=647.29, z=115.41, weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=577.8, y=645.7, z=117.97, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=577.8, y=645.7, z=117.97, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=526.66, y=672.59, z=115.16, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=526.66, y=672.59, z=115.16, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
        }, 
        points = {
            {
                Pos = {x=494.94, y=682.86, z=117.37}, 
                cash = 100, -- if set to 0 no cash reward
                gold = 0,-- if set to 0 no gold reward
                type = "normal", -- one of 3, safe, normal or lockpick 
                --combination ={70,80}, -- only needed if type is safe
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "Acid"}, 
                    {item = "alcohol", count = 2, chance = 5, label = "alcohol"},
                    {item = "diamond", count = 10, chance = 1, label = "diamond"}, 
                    {item = "emerald", count = 1, chance = 3, label = "emerald"}, 
                    {item = "provision_coin_1800_gld_dlr", count = 1, chance = 10, label = "1800 Gold Dollar"}, -- 10 out of 10 chance one of the rewards will be this item
                },  
            },
            {
                Pos = {x=496.8, y=680.34, z=121.03}, 
                cash = 90,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "Acid"}, 
                    {item = "alcohol", count = 10, chance = 5, label = "alcohol"},
                    {item = "dynamite", count = 5, chance = 3, label = "Pipe charge dynamite"}, 
                    {item = "sapphire_uncut", count = 1, chance = 10, label = "sapphire uncut"}, -- 
                },  
            },
            {
                Pos = {x = 468.51, y = 679.68, z = 117.31}, 
                cash = 125,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "Acid"}, 
                    {item = "alcohol", count = 2, chance = 5, label = "alcohol"},
                    {item = "diamond", count = 1, chance = 1, label = "diamond"}, 
                    {item = "emerald", count = 1, chance = 3, label = "emerald"}, 
                    {item = "opal_uncut", count = 1, chance = 10, label = "opal uncut"}, -- 
                },  
            },
            {
                Pos = {x = 498.34, y = 673.68, z = 121.04},
                cash = 140,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "Acid"}, 
                    {item = "alcohol", count = 10, chance = 5, label = "alcohol"},
                    {item = "dynamite", count = 5, chance = 3, label = "Pipe charge dynamite"}, 
                    {item = "diamond", count = 10, chance = 3, label = "diamond"}, 
                    {item = "provision_hrlm_brush_goathair", count = 1, chance = 10, label = "Goat Hair Brush"}, -- 

                },   
            },
            {
                Pos = {x = 494.83, y = 672.37, z = 117.38}, 
                cash = 170,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "Acid"}, 
                    {item = "alcohol", count = 2, chance = 5, label = "alcohol"},
                    {item = "diamond", count = 5, chance = 1, label = "diamond"}, 
                    {item = "emerald", count = 5, chance = 3, label = "emerald"}, 
                    {item = "provision_jail_keys", count = 1, chance = 5, label = "Jail Keys"},
                },  
            },
            {
                Pos = {x = 483.99, y = 680.04, z = 117.31}, 
                cash = 180,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "Acid"}, 
                    {item = "alcohol", count = 2, chance = 5, label = "alcohol"},
                    {item = "dynamite", count = 2, chance = 3, label = "Pipe charge dynamite"}, 
                    {item = "WEAPON_SNIPERRIFLE_CARCANO", count = 1, chance = 1, label = "Carcano Rifle"}, 
                },  
            },
        }
    },
    ["Blackwater General Store"] = {	   
        pos = {x=-789.2166, y=-1322.055, z=44.0}, 
        distancecheck = 50, 
        cooldown = 60, -- in minutes 
        requiredpolice = 2, 
        timeuntilallowrobbery = 2 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'blackwater', -- regional duty station cops 
        },
        npcinfo = {
           {x=-751.746, y= -1260.515, z= 44.0, weapon = `weapon_repeater_evans`, model = "S_M_M_DispatchLeaderPolice_01"},
           {x=-834.1995, y= -1311.683, z= 44.0, weapon = `weapon_rifle_boltaction`, model = "S_M_M_DispatchLeaderRural_01"},
           {x=-789.9339, y= -1270.242, z= 44.0, weapon = `weapon_repeater_henry` , model = "S_M_M_AmbientSDPolice_01"},
           {x=-781.9046, y= -1369.515, z= 44.0, weapon = `weapon_shotgun_pump`, model = "S_M_M_AmbientBlWPolice_01"},
           {x=-820.2146, y= -1383.215, z= 44.0, weapon = `weapon_shotgun_semiauto` , model = "S_M_M_DispatchPolice_01"},
           {x=-861.246, y= -1384.515, z= 44.0, weapon = `weapon_revolver_schofield`, model = "U_M_M_SDPoliceChief_01"},
        }, 
        points = {
            {
                Pos = {x=-784.19, y=-1322.28, z=43.88}, 
                cash = 125, 
                gold = 0,
                type = "normal", 
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "provision_coin_1800_gld_dlr", count = 2, chance = 8, label = "1800 Gold Dollar"}, 
                    {item = "provision_coin_1797_gld_eag", count = 1, chance = 10, label = "1797 Gold Eagle"},
                },  
            },
            {
                Pos = {x=-778.24, y=-1323.88, z=43.88}, 
                cash = 185,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "provision_earring_platinum", count = 2, chance = 8, label = "Platinum Earring"}, 
                    {item = "provision_jewelry_emerald_ring", count = 1, chance = 10, label = "Bosque Emerald Ring"},
                },  
            },
        }
    },
    ["Valentine General Store"] = {	   
        pos = {x = -322.23, y = 803.57, z = 117.93}, 
        distancecheck = 50, 
        cooldown = 60, -- in minutes 
        requiredpolice = 2, 
        timeuntilallowrobbery = 2 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'valentine', -- regional duty station cops 
        },
        npcinfo = {
           {x=-751.746, y= -1260.515, z= 44.0, weapon = `weapon_repeater_evans`, model = "S_M_M_DispatchLeaderPolice_01"},
           {x=-834.1995, y= -1311.683, z= 44.0, weapon = `weapon_rifle_boltaction`, model = "S_M_M_DispatchLeaderRural_01"},
           {x=-789.9339, y= -1270.242, z= 44.0, weapon = `weapon_repeater_henry` , model = "S_M_M_AmbientSDPolice_01"},
           {x=-781.9046, y= -1369.515, z= 44.0, weapon = `weapon_shotgun_pump`, model = "S_M_M_AmbientBlWPolice_01"},
           {x=-820.2146, y= -1383.215, z= 44.0, weapon = `weapon_shotgun_semiauto` , model = "S_M_M_DispatchPolice_01"},
           {x=-861.246, y= -1384.515, z= 44.0, weapon = `weapon_revolver_schofield`, model = "U_M_M_SDPoliceChief_01"},
        }, 
        points = {
            {
                Pos = {x = -324.26, y = 804.07, z = 117.93}, 
                cash = 145, 
                gold = 0,
                type = "normal", 
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "ironbar", count = 2, chance = 8, label = "Iron Bar"}, 
                    {item = "AMMO_RIFLE_EXPRESS", count = 5, chance = 10, label = "ammorifleexpress"},
                },  
            },
            {
                Pos = {x = -321.27, y = 806.38, z = 117.93}, 
                cash = 225,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "ironbar", count = 2, chance = 8, label = "Iron Bar"}, 
                    {item = "provision_jewelry_porcelain_necklace", count = 1, chance = 10, label = "Braxton Amethyst Necklace"},
                },  
            },
        }
    },
    ["Saint Denis General Store"] = {	   
        pos = {x=2826.483, y=-1314.553, z=46.0}, 
        distancecheck = 50, 
        cooldown = 60, -- in minutes 
        requiredpolice = 2, 
        timeuntilallowrobbery = 2 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'sd', -- regional duty station cops 
        },
        npcinfo = {
            {x=2517.564, y= -1306.546, z= 50.0, weapon = `weapon_repeater_evans`, model = "S_M_M_DispatchLeaderPolice_01"},
            {x=2759.264, y= -1387.546, z= 46.4, weapon = `weapon_rifle_boltaction`, model = "S_M_M_DispatchLeaderRural_01"},
            {x=2684.864, y= -1361.546, z= 48.0, weapon = `weapon_shotgun_pump`, model = "S_M_M_AmbientBlWPolice_01"},
            {x=2634.164, y= -1296.646, z= 52.3, weapon = `weapon_shotgun_semiauto` , model = "S_M_M_DispatchPolice_01"},
            {x=2591.564, y= -1224.546, z= 53.4, weapon = `weapon_revolver_schofield`, model = "U_M_M_SDPoliceChief_01"},
            {x=2590.164, y= -1148.256, z= 52.2, weapon = `weapon_revolver_schofield`, model = "U_M_M_SDPoliceChief_01"},
            {x=2823.964, y= -1150.446, z= 46.4, weapon = `weapon_revolver_schofield`, model = "U_M_M_SDPoliceChief_01"},
            {x=2662.764, y= -1406.546, z= 46.5, weapon = `weapon_repeater_henry` , model = "S_M_M_AmbientSDPolice_01"},
        }, 
        points = {
            {
                Pos = {x=2829.407, y=-1315.738, z=46.75}, 
                cash = 250, 
                gold = 0,
                type = "normal", 
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "provision_jewelry_slvr_pearl_necklace", count = 2, chance = 8, label = "Silver Pearl Necklace"}, 
                    {item = "provision_earring_platinum", count = 1, chance = 10, label = "Platinum Earring"},
                    {item = "diamond", count = 1, chance = 2, label = "Diamond"},
                },  
            },
            {
                Pos = {x = 2825.09, y = -1319.93, z = 46.76}, 
                cash = 200,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "provision_coin_1797_gld_eag", count = 2, chance = 8, label = "1797 Gold Eagle"}, 
                    {item = "provision_bracelet_gold", count = 1, chance = 10, label = "Gold Bracelet"},
                    {item = "diamond", count = 1, chance = 2, label = "Diamond"},
                },  
            },
            {
                Pos = {x = 2831.22, y = -1310.09, z = 46.76}, 
                cash = 180,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "ruby_uncut", count = 2, chance = 8, label = "ruby uncut"}, 
                    {item = "emerald", count = 1, chance = 10, label = "emerald"},
                    {item = "diamond", count = 1, chance = 2, label = "Diamond"},
                },  
            },
        }
    },
    ["Fort Wallace"] = {	   
        pos = {x=357.7942, y=1466.816, z=179.2}, 
        distancecheck = 150, 
        cooldown = 60, -- in minutes 
        requiredpolice = 4, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'valentine', -- regional duty station cops 
        },
        npcinfo = {}, 
        points = {
            {
                Pos = {x=366.3247, y=1490.163, z=180.30}, 
                cash = 200, 
                gold = 0,
                type = "normal", 
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "ruby_uncut", count = 2, chance = 10, label = "ruby uncut"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                    {item = "provision_earring_platinum", count = 3, chance = 10, label = "Platinum Earring"},
                },  
            },
            {
                Pos = {x=366.3247, y=1490.163, z=180.30}, 
                cash = 185,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "provision_buckle_platinum", count = 2, chance = 10, label = "Platinum Buckle"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                    {item = "provision_jail_keys", count = 3, chance = 10, label = "Jail Keys"},
                },  
            },
        }
    },
    ["Fort Mercer"] = {	   
        pos = {x=-4203.01, y=-3446.05, z=40.02}, 
        distancecheck = 150, 
        cooldown = 60, -- in minutes 
        requiredpolice = 4, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'armadillo', -- regional duty station cops 
        },
        npcinfo = {
            {x=-4207.43, y=-3418.04, z=45.63, weapon = `weapon_repeater_evans`, model = "U_M_M_UNIONLEADER_01"},
            {x=-4226.46, y=-3433.72, z=41.48, weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=-4205.24, y=-3463.74, z=45.20, weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=-4193.87, y=-3476.87, z=41.48, weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=-4181.22, y=-3455.44, z=41.47, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=-4172.59, y=-3433.10, z=42.47, weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=-4171.21, y=-3429.93, z=42.48, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-4176.22, y=-3438.12, z=37.08, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-4180.33, y=-3443.76, z=37.13, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4180.33, y=-3443.76, z=37.13, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4247.07, y=-3475.86, z=37.08, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4250.23, y=-3474.81, z=37.08, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4244.14, y=-3488.77, z=37.08, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4213.91, y=-3499.68, z=42.65, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4216.04, y=-6504.27, z=42.65, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4189.73, y=-3464.61, z=37.28, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4188.89, y=-3458.89, z=37.28, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4236.33, y=-3478.12, z=37.06, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4239.42, y=-3464.06, z=41.48, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4239.42, y=-3464.06, z=41.48, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4207.43, y=-3418.04, z=45.63, weapon = `weapon_repeater_evans`, model = "U_M_M_UNIONLEADER_01"},
            {x=-4226.46, y=-3433.72, z=41.48, weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=-4205.24, y=-3463.74, z=45.20, weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=-4193.87, y=-3476.87, z=41.48, weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=-4181.22, y=-3455.44, z=41.47, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=-4172.59, y=-3433.10, z=42.47, weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=-4171.21, y=-3429.93, z=42.48, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-4176.22, y=-3438.12, z=37.08, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-4180.33, y=-3443.76, z=37.13, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4180.33, y=-3443.76, z=37.13, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4247.07, y=-3475.86, z=37.08, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4250.23, y=-3474.81, z=37.08, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4244.14, y=-3488.77, z=37.08, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4213.91, y=-3499.68, z=42.65, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4216.04, y=-6504.27, z=42.65, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4189.73, y=-3464.61, z=37.28, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4188.89, y=-3458.89, z=37.28, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4236.33, y=-3478.12, z=37.06, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4239.42, y=-3464.06, z=41.48, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-4239.42, y=-3464.06, z=41.48, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
        }, 
        points = {
            {
                Pos = {x=-4204.85, y=-3432.45, z=37.08}, 
                cash = 180, 
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", count = 3, chance = 8, label = "Rollingblock Rifle"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                    {item = "AMMO_RIFLE_EXPRESS", count = 1, chance = 10, label = "ammorifleexpress"},
                },  
            },
            {
                Pos = {x=-4201.40, y=-3448.92, z=37.08}, 
                cash = 225,
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "provision_jewelry_gld_pearl_necklace", count = 3, chance = 8, label = "Rou Pearl Necklace"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                    {item = "WEAPON_LASSO_REINFORCED", count = 1, chance = 10, label = "Reinforced Lasso"},
                },  
            },
            {
                Pos = {x=-4187.39, y=-3423.03, z=37.08}, 
                cash = 200,
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "provision_ring_platinum", count = 3, chance = 8, label = "Platinum Ring"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                    {item = "provision_jewelry_pearl_ring", count = 1, chance = 10, label = "Bonnard Pearl Ring"},
                },  
            },
            {
                Pos = {x=-4249.82, y=-3456.37, z=37.10}, 
                cash = 100,
                gold = 0,
                type = "lockpick",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "provision_disco_ancient_necklace", count = 2, chance = 8, label = "Ancient Necklace"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
            {
                Pos = {x=-4234.39, y=-3478.83, z=37.08}, 
                cash = 250,
                gold = 0,
                type = "lockpick",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "provision_bracelet_gold", count = 2, chance = 8, label = "Gold Bracelet"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
            {
                Pos = {x=-4214.46, y=-3470.89, z=40.95}, 
                cash = 95,
                gold = 0,
                type = "normal",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
        }
    },

   --[["Blackwater Bank"] = {	   
        pos = {x=-811.33, y=-1278.62, z=43.63}, 
        distancecheck = 50, 
        cooldown = 60, -- in minutes 
        requiredpolice = 2, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'blackwater', -- regional duty station cops 
        },
        npcinfo = {
        }, 
        points = {
            {
                Pos = {x=-813.59, y=-1279.15, z=43.63}, 
                cash = 0, 
                gold = 0,
                type = "normal", 
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "emerald", count = 1, chance = 5, label = "emerald"},
                    {item = "diamond", count = 1, chance = 5, label = "diamond"},
                    {item = "goldbar", count = 1, chance = 5, label = "gold bar"},
                    {item = "moneybagfv", count = 1, chance = 10, label = "Average Bag of Cash"},
                    {item = "banktools", count = 1, chance = 10, label = "Safe Tools"},
                },  
            },
            {
                Pos = {x=-811.07, y=-1273.44, z=43.63}, 
                cash = 0, 
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "emerald", count = 1, chance = 5, label = "emerald"},
                    {item = "diamond", count = 1, chance = 5, label = "diamond"},
                    {item = "goldbar", count = 1, chance = 5, label = "gold bar"},
                    {item = "moneybagfv", count = 1, chance = 10, label = "Average Bag of Cash"},
                },  
            },
            {
                Pos = {x=-820.10, y=-1273.42, z=43.63}, 
                cash = 0, 
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "emerald", count = 1, chance = 5, label = "emerald"},
                    {item = "diamond", count = 1, chance = 5, label = "diamond"},
                    {item = "goldbar", count = 1, chance = 5, label = "gold bar"},
                    {item = "moneybagth", count = 1, chance = 10, label = "Big Bag of Cash"},
                },  
            },
            
        }
    },]]--
    --[[["Saint Denis Bank"] = {	   
        pos = {x=2646.85, y=-1298.80, z=52.24}, 
        distancecheck = 50, 
        cooldown = 60, -- in minutes 
        requiredpolice = 2, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'sd', -- regional duty station cops 
        },
        npcinfo = {
        }, 
        points = {
            {
                Pos = {x=2644.73, y=-1302.56, z=52.24}, 
                cash = 0, 
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "emerald", count = 1, chance = 5, label = "emerald"},
                    {item = "diamond", count = 1, chance = 5, label = "diamond"},
                    {item = "goldbar", count = 1, chance = 5, label = "gold bar"},
                    {item = "moneybagth", count = 1, chance = 10, label = "Big Bag of Cash"},
                },  
            },
            {
                Pos = {x=2644.42, y=-1306.65, z=52.24},  
                cash = 0, 
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "emerald", count = 1, chance = 5, label = "emerald"},
                    {item = "diamond", count = 1, chance = 5, label = "diamond"},
                    {item = "goldbar", count = 1, chance = 5, label = "gold bar"},
                    {item = "moneybagth", count = 1, chance = 10, label = "Big Bag of Cash"},
                },  
            },
            {
                Pos = {x=2646.51, y=-1287.25, z=52.25},  
                cash = 0, 
                gold = 0,
                type = "normal", 
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "emerald", count = 1, chance = 5, label = "emerald"},
                    {item = "diamond", count = 1, chance = 5, label = "diamond"},
                    {item = "goldbar", count = 1, chance = 5, label = "gold bar"},
                    {item = "moneybagfv", count = 1, chance = 10, label = "Average Bag of Cash"},
                    {item = "banktools", count = 1, chance = 10, label = "Safe Tools"},
                },  
            },
            
        }
    },
    ["Armadillo Fort"] = {	   
        pos = {x=-3224.1, y=-3047.95, z=2.5}, 
        distancecheck = 150, 
        cooldown = 0, -- in minutes 
        requiredpolice = 0, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'armadillo', -- regional duty station cops 
        },
        npcinfo = {
            {x=-3216.3, y=-3052.4, z=-0.17, weapon = `weapon_repeater_evans`, model = "U_M_M_UNIONLEADER_01"},
            {x=-3216.3, y=-3052.4, z=-0.17, weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=-3216.3, y=-3052.4, z=-0.17, weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=-3216.3, y=-3052.4, z=-0.17, weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=-3216.3, y=-3052.4, z=-0.17, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=-3232.1, y=-3050.3, z=-0.25, weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=-3232.1, y=-3050.3, z=-0.25, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-3232.1, y=-3050.3, z=-0.25, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-3232.1, y=-3050.3, z=-0.25, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3232.1, y=-3050.3, z=-0.25, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3230.36, y=-3069.6, z=-1.02, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3230.36, y=-3069.6, z=-1.02,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3230.36, y=-3069.6, z=-1.02,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3230.36, y=-3069.6, z=-1.02,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3230.36, y=-3069.6, z=-1.02,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3215.06, y=-3066.89, z=-0.44, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3215.06, y=-3066.89, z=-0.44, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3215.06, y=-3066.89, z=-0.44, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3215.06, y=-3066.89, z=-0.44, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3215.06, y=-3066.89, z=-0.44, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3215.06, y=-3066.89, z=-0.44, weapon = `weapon_repeater_evans`, model = "U_M_M_UNIONLEADER_01"},
            {x=-3229.9, y=-3083.36, z=-0.96, weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=-3229.9, y=-3083.36, z=-0.96, weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=-3229.9, y=-3083.36, z=-0.96, weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=-3229.9, y=-3083.36, z=-0.96, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=-3229.9, y=-3083.36, z=-0.96, weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=-3229.9, y=-3083.36, z=-0.96, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-3214.13, y=-3084.19, z=-0.33, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=-3214.13, y=-3084.19, z=-0.33, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3214.13, y=-3084.19, z=-0.33, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3214.13, y=-3084.19, z=-0.33, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=-3214.13, y=-3084.19, z=-0.33, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
        }, 
        points = {
            {
                Pos = {x=-3224.6, y=-3033.1, z=0.147}, 
                cash = 140, 
                gold = 2,
                type = "safe", 
                combination ={math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
            {
                Pos = {x=-3233.12, y=-3044.8, z=-0.09}, 
                cash = 125,
                gold = 3,
                type = "safe", 
                combination ={math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "stolenmerch", count = 2, chance = 8, label = "Stolen Items"},
                    {item = "provision_diamond_ring", count = 1, chance = 10, label = "Diamond Ring"},
                },  
            },
            {
                Pos = {x=-4187.39, y=-3070.5, z=-0.39}, 
                cash = 300,
                gold = 2,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                },  
            },
            {
                Pos = {x=-3228.69, y=-3073.18, z=-0.97}, 
                cash = 195,
                gold = 0,
                type = "lockpick",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
            
        }
    },

    ["Lemoyne Fort"] = {	   
        pos = {x=2454.5, y=292.5, z=70.35}, 
        distancecheck = 150, 
        cooldown = 0, -- in minutes 
        requiredpolice = 0, 
        timeuntilallowrobbery = 5 , -- time until boxes appear give chance for police to catchup, set to 0 if you dont wana use
        showblip = false,
        showlockboxblip = false,
        shoottostart = true, -- if true, gunshots are required to start robbery else prompt press is required
        distancetostart = 5, -- how far from start point u have to be
        copsdutyregion = {  -- this is changed now ! you must match it with the regional duty stations from syn society 
            'rhodes', -- regional duty station cops 
        },
        npcinfo = {
            {x=2449.12, y=300.1, z=70.21, weapon = `weapon_repeater_evans`, model = "U_M_M_UNIONLEADER_01"},
            {x=2449.12, y=300.1, z=70.21, weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=2449.12, y=300.1, z=70.21, weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=2449.12, y=300.1, z=70.21, weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=2449.12, y=300.1, z=70.21, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=2449.93, y=280.9, z=70.5, weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=2449.93, y=280.9, z=70.5, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=2449.93, y=280.9, z=70.5, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=2449.93, y=280.9, z=70.5, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2449.93, y=280.9, z=70.5, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2459.3, y=277.0, z=75.4, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2452.2, y=277.98, z=74.87,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2445.3, y=280.1, z=74.75,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2440.9, y=286.2, z=74.19,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2442.5, y=293.3, z=74.16,  weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2441.5, y=298.9, z=74.12, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2446.45, y=304.3, z=73.8, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2460.2, y=300.6, z=74.7, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2444.72, y=291.59, z=70.3, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2444.72, y=291.59, z=70.3, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2444.72, y=291.59, z=70.3, weapon = `weapon_repeater_evans`, model = "U_M_M_UNIONLEADER_01"},
            {x=2444.72, y=291.59, z=70.3,weapon = `weapon_rifle_boltaction`, model = "U_M_M_UNIONLEADER_01"},
            {x=2444.72, y=291.59, z=70.3,weapon = `weapon_repeater_henry` , model = "U_M_M_UNIONLEADER_02"},
            {x=2444.72, y=291.59, z=70.3,weapon = `weapon_shotgun_pump`, model = "U_M_M_UNIONLEADER_02"},
            {x=2463.2, y=286.3, z=72.52, weapon = `weapon_shotgun_semiauto` , model = "U_M_M_UniBountyHunter_01"},
            {x=2463.2, y=286.3, z=72.52,weapon = `weapon_revolver_schofield`, model = "U_M_M_UniBountyHunter_01"}, 
            {x=2463.2, y=286.3, z=72.52,weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=2463.2, y=286.3, z=72.52, weapon = `weapon_repeater_henry`, model = "U_M_M_UniBountyHunter_02"}, 
            {x=2448.5, y=280.93, z=70.56, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2448.5, y=280.93, z=70.56, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2448.5, y=280.93, z=70.56, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
            {x=2448.5, y=280.93, z=70.56, weapon = `weapon_repeater_evans`, model = "U_M_M_RhdBackupDeputy_02"}, 
        }, 
        points = {
            {
                Pos = {x=2452.5, y=280.0, z=70.49}, 
                cash = 175, 
                gold = 0,
                type = "safe", 
                combination ={math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
            {
                Pos = {x=2460.02, y=300.6, z=70.2}, 
                cash = 275,
                gold = 3,
                type = "safe", 
                combination ={math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                },  
            },
            {
                Pos = {x=2448.8, y=296.4, z=70.1}, 
                cash = 300,
                gold = 4,
                type = "safe", 
                combination ={math.random(0,99),math.random(0,99)},
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                },  
            },
            {
                Pos = {x=2445.9, y=280.5, z=74.7}, 
                cash = 150,
                gold = 2,
                type = "lockpick",
                lockpickitem = {name = "lockpick",label = "Lockpick"},
                items = {
                    {item = "acid", count = 5, chance = 5, label = "acid"}, 
                    {item = "WEAPON_KIT_BINOCULARS_IMPROVED", count = 2, chance = 8, label = "Improved Binoculars"},
                    {item = "dynamite", count = 1, chance = 10, label = "Pipe charge dynamite"},
                    {item = "emerald", count = 1, chance = 2, label = "emerald"},
                    {item = "heroin", count = 1, chance = 5, label = "heroin"},
                    {item = "goldbar", count = 1, chance = 2, label = "gold bar"},
                    {item = "moneybagfv", count = 1, chance = 10, label = "Average Bag of Cash"},
                },  
            },
            
        }
    },]]--
   
}

Config.Language = {
    startrobbery = "Shoot Gun To Start Robbery",
    startrobbery2 = "Press ~e~[G]~q~ To Start Robbery",
    robbedrecently = "Has Been Robbed Recently Come Back Later!",
    nopolice = "Not Enough Police In Region, number required is ",
    thereareonly = "current regional police count: ",
    cantrobjob = "Cant Start Robbery With Your Job",
    robberytimer = "Time Until You Can Start Looting: ",
    startlooking = "You Can Start Looking For Loot!",
    lootbox = "Loot Box",
    lockpick = "Press ~e~[G]~q~ To Start Lockpicking",
    itemissing = "You Cant Open The Box Without A ",
    guide = "Press ~e~[Up Arrow]~q~ to move pin, ~e~[Left Arrow]~q~ To Lock Pin In Place, Lock Pin When Its Green",
    lockpicked = " You Lockpicked Successfully!",
    brokenlockpick = " You Failed to Lockpick and lost a ",
    reward = "You Found ",
    gold = " Gold",
    inprogressat = "~e~Robbery In Progress At ~q~",
    removenot = "~e~do /",
    removenot2 = " to remove notifications",
    robbery = "Robbery",
    recentlyrobbed = "You Recently Robbed a spot you need to wait before your next robbery ",

}