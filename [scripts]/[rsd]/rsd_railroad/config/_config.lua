--DO NOT RENAME THE RESOURCE !!

Config = {}

Config.debug = false
Config.PrintServer = true

--====================================================
--|                    PARAMETERS                    | 
--====================================================

--PARAMETERS
Config.MPH = true --MPH or KM/H
Config.CoefSellPrice = 0.5 -- 50% of price
Config.CoefUpgradePrice = 0.1 -- 10% of price

--ALL JOBS ALLOWED
Config.JobAllowed = { --ALL JOBS 
    "railroader"
}

--POUND
Config.TimePound = 5--min pound for train 

--MENU BUY/SELL
Config.BS_RanksAllowed = {2, 3} --ranks to buy and sell

--MENU UPGRADE
Config.U_RanksAllowed = {2, 3} --ranks to upgrade

--SPAWN
Config.S_RanksAllowed = {0, 1, 2, 3} --ranks to spawn train

--TRANSFERT
Config.EnableTransfert = true
Config.PriceTransfert = 3000 -- price to transfert
Config.T_RanksAllowed = {2, 3} --ranks to transfert train

--NEEDS (COAL/WATER)
Config.LooseNeedsSpeed = 5.0 --speed at which needs are consumed (coal, water, life)
Config.LooseTime = 30 --loss of need (every 30sec)
Config.DisableControlNeeds = false -- DISABLE completely all train controls if you do not have needs

--COAL
Config.EnableCoal = true --If you want Coal system
Config.Coal_DefaultValue = 1000 --Default value when you buy a train
Config.Coal_Loose = 25 --How much loose coal every "Config.LooseTime"
Config.Coal_Item = "coal_bag" -- item to fill coal
Config.Coal_AddPerItem = 500  --quantity the item adds
Config.Coal_TimeFill = 10 -- time of animation (10sec)

--WATER
Config.EnableWater = true --If you want Water system
Config.Water_DefaultValue = 1000 --Default value when you buy a train
Config.Water_Loose = 10 --How much loose water every "Config.LooseTime"
Config.Water_Cost = 50 -- 1$ full refill
Config.Water_TimeFill = 30 -- time of animation (30sec)

--LIFE
Config.EnableLife = true --If you want Life system
Config.Life_Loose = 1  --How much loose water every "Config.Life_LooseTime"
Config.Life_Min = 30 -- Min life, limit the speed of train
Config.Life_LooseTime = 60 --loss of life (every 60sec)
Config.Repair_Item = "train_repair_kit" --item to repair
Config.Life_TimeFill = 30 -- time of animation (30sec)

--INVENTORY
Config.AccessToEveryone = false --If you want to block inventory for job
Config.Inventory = {--FOR INVENTORY (VORP, RSG...)
    acceptWeapons = true,
    shared = true,
    ignoreItemStackLimit = true,
}

--ANNOUNCE
Config.EnableAnnounce = true --If you want announce
Config.AnnounceRange = 300.0 --Range if you make an announce not for everyone
Config.AnnounceTime = 15 --time for announce (15sec)
Config.AlertSheriff = true --If you can send alert to sheriff from train menu

--SWITCH
Config.Switch_EnableBlip = true --if you want blip for switchs
Config.Switch_Blip = 1754506823 --Blip Switch
Config.Switch_Blip_Action = 305281166 --Blip Switch action coords
Config.Switch_Wait = 10 --Cooldown before pressing again (10sec)
Config.AlertForSwitch = true --send alert to other railroaders


--SKIN
Config.EnableSkins = true --If you want skins (now, skins are permanent and saved in DB)
Config.Skins = {
    {
        name = "Christmas", -- name
        model = "mp006_p_veh_xmasnsteamer01x", --object
        price = 500, --price
        icon = "candy-cane", -- icon in menu
        coords = {
            bigLoc = {0, 0.0, 0.26, 0.57, 0.0, 0.0, 0.0}, -- coords attach the object for big locomotive
            classicLoc = {0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, -- coords attach the object for classic locomotive
        },
    },
    {
        name = "Shield",
        model = "mp001_armor_nsteamer01x",
        price = 2000,
        icon = "shield",
        coords = {
            bigLoc = {0.0, 0.0, 0.43, 0.0, 0.0, 0.0},
            classicLoc = {0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0},
        },
    },
}

--KEYS (changes to avoid)
Config.KeyMenu = 0x760A9C6F -- G
Config.KeyCoal = 0x760A9C6F -- G
Config.KeyWater = 0x760A9C6F -- G
Config.KeyInventory = 0x760A9C6F -- G
Config.KeyRepair = 0x760A9C6F -- G
Config.KeyDoors = 0x760A9C6F -- G
Config.KeySwitches = {0xA65EBAB4, 0xDEB34313} --arrows
Config.KeyRegul = 0xD9D0E1C0 --SPACEBAR
Config.KeyAnnounce = 0x27D1C284 --R
Config.KeyMaintenance = 0x760A9C6F -- G
Config.KeyDeliveries = {0x760A9C6F, 0x27D1C284} --G, R

--MISSIONS
Config.PayCompany = true --If you want company be paid with mission
Config.ShareReward = 0.6 -- 20% // percentage for railroader

--GHOST EVENT
-- !!! Check the README.md to know !!!

--LOGS JDlogs
Config.EnableJDLogs = false -- Enable JDlogs
Config.JDLogs_ID = { -- ID for JDlogs
    train = "train",
    mission = "mission",
    action = "action",
}
--LOGS Discord
Config.EnableDiscordLogs = true -- Enable Discord logs
Config.DiscordLogs_ID = { -- Webhook URL for Discord logs
    train = "https://discord.com/api/webhooks/1476344741695197195/XPc_J0CPx3RDV07RJLHqomiyF9zb4EjIA5787gTA_k6nUA0mdNE-LXxY92qhuIwIp9Vd",
    mission = "https://discord.com/api/webhooks/1476344741695197195/XPc_J0CPx3RDV07RJLHqomiyF9zb4EjIA5787gTA_k6nUA0mdNE-LXxY92qhuIwIp9Vd",
    action = "https://discord.com/api/webhooks/1476344741695197195/XPc_J0CPx3RDV07RJLHqomiyF9zb4EjIA5787gTA_k6nUA0mdNE-LXxY92qhuIwIp9Vd",
}

--====================================================
--|                    LANGUAGE                      | 
--====================================================
Config.Language = {
    ["key_station"] = "Station Menu",
    ["key_tender"] = "Refill the Tender",
    ["key_inventory"] = "Storage",
    ["key_repair"] = "Repair",
    ["prompt_coal"] = "Coal Bunker",
    ["prompt_train"] = "Train",
    ["key_wagon"] = "Open/Close Doors",
    ["prompt_wagon"] = "Wagon",
    ["m_dtxt_title"] = "Active Mission: ",
    ["m_dtxt_subtitle"] = {"~o~Delivery", "~o~Maintenance", "~o~Transport"},
    ["m_dtxt_transport"] = "Current Passengers: ~o~",
    ["m_dtxt_transport_plateform"] = "Passengers at Platform: ~o~",
    ["key_delivery"] = {"Deliver", "Stop Delivery"},
    ["prompt_delivery"] = "Goods Delivery",
    ["unity_price"] = "/u",
    ["delivery_input"] = {"Destination:", "Goods to Deliver:"},
    ["delivery_send_input"] = {"Goods:", "Quantity:"},
    ["key_repair"] = "Repair",
    ["key_hammer"] = "Take/Drop the Hammer",
    ["prompt_repair"] = "Repair Cart",
    ["prompt_hammer"] = "Track Maintenance",
    ["blip_maintenance"] = "Maintenance",
    ["blip_switch"] = {"Switch", "Switch Post"},
    ["blip_switch_slowdown"] = "Slow Down! (MAX 60km/h)",
    ["key_water"] = "Refill",
    ["prompt_water"] = "Water Tower",
    ["hud"] = {
        "Name",
        "Speed",
        "Coal",
        "Water",
        "Condition",
    },
}

Config.LanguageMenu = {
    ["option"] = "Options",
    ["station"] = "Station",
    ["station_desc"] = "Manage the trains of this station",
    ["station_buy"] = "Buy a Train",
    ["station_buy_desc"] = "Purchase a train",
    ["station_missions"] = "Missions",
    ["station_missions_desc"] = "Maintenance, deliveries, transport...",
    ["announce"] = "Station Announcements",
    ["announce_desc"] = "Make station announcements",
    ["park"] = "Park the Train",
    ["park_desc"] = "Park the train at this station",
    ["transfert"] = "Transfer Station",
    ["transfert_desc"] = "Transfer this train to another station.",
    ["transfert_input"] = "New Station:",
    ["manage_train_desc"] = "Manage this train",
    ["info_train"] = "Information",
    ["info_train_desc"] = "Train information",
    ["out_train"] = "Exit",
    ["out_train_desc"] = "Take the train out",
    ["direction"] = "Direction: ",
    ["direction_desc"] = "Choose the direction",
    ["i_name"] = "Name:",
    ["i_name_desc"] = "Train name",
    ["i_weight"] = "Storage:",
    ["i_weight_desc"] = "Train storage capacity",
    ["i_speed"] = "Top Speed:",
    ["i_speed_desc"] = "Maximum locomotive speed",
    ["i_life"] = "Condition:",
    ["i_life_desc"] = "Train condition",
    ["i_coal"] = "Coal:",
    ["i_coal_desc"] = "Amount of coal in the tender",
    ["i_water"] = "Water:",
    ["i_water_desc"] = "Amount of water in the tank",
    ["i_upgrade"] = "Upgrade:",
    ["i_upgrade_desc"] = "Upgrade the machinery for ",
    ["i_transport"] = {"Passenger Transport:", "YES", "NO"},
    ["i_transport_desc"] = "Ability to carry passengers",
    ["i_preview"] = "View Train",
    ["i_preview_desc"] = "See the full train",
    ["i_sell"] = "Sell",
    ["i_sell_desc"] = "Sell the train",
    ["i_buy"] = "Buy",
    ["i_buy_desc"] = "Purchase the train",
    ["company_title"] = "Companies",
    ["company_desc"] = "View trains of the ",
    ["m_title"] = "Missions",
    ["m_maintenance"] = "Maintenance",
    ["m_maintenance_desc"] = "Rail and switch maintenance",
    ["m_transport"] = "Transport",
    ["m_transport_desc"] = "Citizen transport",
    ["m_delivery"] = "Deliveries",
    ["m_delivery_desc"] = "Goods delivery",
    ["m_delivery_reward"] = "Reward: ",
    ["m_delivery_list"] = "Delivery Details",
    ["m_delivery_list_desc"] = "View delivery details",
    ["a_title"] = "Announcements",
    ["a_start"] = "Departure",
    ["a_start_desc"] = "Make a departure announcement",
    ["a_start_input"] = {"Departure Station:", "Direction:", {"Time", "Minutes..."}},
    ["a_stop"] = "Arrival",
    ["a_stop_desc"] = "Make an arrival announcement",
    ["a_stop_input"] = {"Arrival Station:", {"Time", "Minutes..."}},
    ["a_other"] = "Other",
    ["a_other_desc"] = "Make a custom announcement",
    ["a_other_input"] = {"Announcement:", "Your message..."},
    ["a_people"] = "Send to everyone?",
    ["a_sheriff"] = "Sheriff",
    ["a_sheriff_desc"] = "Send an alert to the sheriffs",
    ["train_menu"] = "Train Menu",
    ["cam_passenger"] = "View Passenger Car",
    ["cam_passenger_desc"] = "Only available in transport mode!",
    ["m_stop"] = "Stop Current Mission",
    ["m_stop_desc"] = "Cancel the ongoing mission",
    ["m_stop_input"] = "Are you sure you want to stop the current mission?",
    ["rename_input"] = {"Rename the Train", "New Name"},
    ["sure_upgrade"] = "Are you sure you want to upgrade the train?",
    ["sure_sell"] = "Are you sure you want to sell the train?",
    ["sure_buy"] = "Are you sure you want to buy the train?",
    ["skin"] = "Equipment",
    ["skin_desc"] = "View locomotive equipment.",
    ["skin_desc_add"] = "Apply the equipment.",
    ["skin_desc_remove"] = "Remove the equipment.",
    ["skin_input"] = "Buy the equipment for ",
    ["skin_remove_input"] = "Remove the equipment?",
}


Config.IconMenu = {
    ["station"] = "train",
    ["station_buy"] = "hand-holding-dollar",
    ["station_missions"] = "file-contract",
    ["announce"] = "bullhorn",
    ["park"] = "boxes-stacked",
    ["out_train"] = "arrow-right-arrow-left",
    ["out_train_r"] = "arrow-right",
    ["out_train_l"] = "arrow-left",
    ["i_name"] = "pen",
    ["i_weight"] = "boxes-stacked",
    ["i_speed"] = "gauge-high",
    ["i_life"] = "hammer",
    ["i_coal"] = "mound",
    ["i_water"] = "faucet-drip",
    ["i_upgrade"] = "gears",
    ["i_preview"] = "eye",
    ["i_sell"] = "money-bills",
    ["i_buy"] = "money-bills",
    ["m_maintenance"] = "bridge-circle-exclamation",
    ["m_transport"] = "person-circle-exclamation",
    ["m_delivery"] = "file-circle-exclamation",
    ["a_start"] = "play",
    ["a_stop"] = "pause",
    ["a_other"] = "pen",
    ["a_sheriff"] = "star",
    ["cam_passenger"] = "person-walking-luggage",
    ["m_stop"] = "ban",
    ["skin"] = "shield",
}

Config.LanguageNotify = {
    ["new_train"] = "~o~New Train",
    ["delete_train"] = "Train ~o~sold",
    ["upgrade_train"] = "Machinery ~o~upgraded",
    ["transfert_train"] = "Train ~o~transferred",
    ["rename_train"] = "Train ~o~renamed",
    ["not_allowed"] = "You are not authorized",
    ["already_in_mission"] = "You already have an active task",
    ["not_here"] = "The train is not at this station",
    ["not_outhere"] = "The train is already out",
    ["not_parked"] = "The train is not parked",
    ["not_mission_t"] = "You are not in a transport mission",
    ["near_player"] = "Someone is ~o~too close to you",
    ["already_repaired"] = "The train is already in good condition",
    ["toofar_water"] = "The tender is too far from the water tower",
    ["no_train"] = "No train nearby",
    ["already_train"] = "A train is too close",
    ["already_train_onrail"] = "A train is blocking the exit",
    ["no_your_train"] = "This train doesn't belong to your company",
    ["train_parked"] = "Train ~o~parked",
    ["train_out"] = "Train ~o~deployed",
    ["switch_notify"] = "Switch: ~o~",
    ["switch_cancel_notify"] = "Switch ~e~cancelled",
    ["too_upgrade"] = "The machinery is already at maximum",
    ["fillwater_inprogress"] = "Refilling water...",
    ["fillwater_good"] = "Water tank ~o~filled",
    ["fillwater_toomuch"] = "The water tank is full",
    ["fillcoal_inprogress"] = "Refilling coal...",
    ["fillcoal_good"] = "Coal bunker ~o~filled",
    ["fillcoal_toomuch"] = "The coal bunker is full",
    ["repair_inprogress"] = "Repairing...",
    ["repair_good"] = "Pistons ~o~maintained",
    ["end_preview"] = "End of train preview",
    ["menu_notify"] = "Cruise Control: ~INPUT_JUMP~\nTrain Menu: ~INPUT_LOOT3~",
    ["speed_notify"] = {"Cruise Control: ~t6~ON", "Cruise Control: ~e~OFF"},
    ["notif_reward"] = "Railroad Mission: ",
    ["notif_reward_c"] = "Railway mission (Company): ",
    ["haveno_train"] = "The company has no trains",
    ["need_stop_m"] = "You must stop the mission before parking the train",
    ["alert_switch"] = {"Train Switch Info\nSwitched to: ~o~", "\n~q~From: ~o~"},
    ["delivery_info"] = {
        "Deliver the goods to the designated location",
        "You don't have the required quantity!",
        "Delivery mission ~e~cancelled",
        "Delivery mission ~e~completed",
        "Delivery Location",
    },
    ["maintenance_info"] = {
        "Take ~o~the repair cart~q~ to reach the ~o~maintenance locations",
        "Once finished, return ~o~the cart to the station",
        "Maintenance ~o~completed~q~!",
        "Repair the ~o~damaged segment",
        "Go to the next segment or return the cart",
        "Repair ~o~completed~q~!",
    },
    ["transport_info"] = {
        "~o~Board ~q~the train and ~o~align the passenger car with the platform",
        "Blow the ~o~whistle ~q~to signal boarding",
        "Boarding in progress...",
        "Disembarking in progress...",
        "You can't disembark passengers at the same platform!",
        "The car must be closer to the platform!",
        "No ~o~passenger cars at the front~q~, ~e~mission cancelled~q~!",
        "All passengers are on the train",
        "All passengers have exited the train",
        "You must first ~o~drop off all passengers",
        "Transport mission ~e~cancelled",
    },
}


Config.LanguageDirection = {
    [1] = {"Emerald Ranch", "Flatneck/Rhodes"},
    [2] = {"Saint-Denis", "Valentine"},
    [3] = {"Bacchus", "Saint-Denis"},
    [4] = {"Valentine/Annesburg", "Rhodes/Emerald Ranch"},
    [5] = {"Saint-Denis/Nord", "Saint-Denis/Sud"},
    [6] = {"Valentine/Rhodes", "Blackwater/Riggs"},
    [7] = {"Flatneck/Blackwater", "Wallace"},
    [8] = {"Riggs", "Bacchus"},
    [9] = {"Wallace", "Annesburg"},
    [10] = {"Annesburg", "Saint-Denis"},
    [11] = {"Blackwater", "Armadillo"},
    [12] = {"MacFarlane's Ranch", "Benedict Point"},
    [13] = {"Rathskeller Fork", "Armadillo"},
    [14] = {"Riggs/Flatneck", "MacFarlane's Ranch"},
}

Config.LanguageLogs = {
    ["company"] = "__COMPANY:__ ",
    ["id"] = "__TRAIN ID:__ ",
    ["name"] = "__NAME:__ ",
    ["buy"] = "**TRAIN PURCHASED**",
    ["sell"] = "**TRAIN SOLD**",
    ["upgrade"] = "**TRAIN UPGRADED**",
    ["transfert"] = "**TRAIN TRANSFERRED**",
    ["rename"] = "**TRAIN RENAMED**",
    ["coal"] = "**TRAIN ACTION - COAL REFILL**",
    ["water"] = "**TRAIN ACTION - WATER REFILL**",
    ["life"] = "**TRAIN ACTION - REPAIR**",
    ["mission_d"] = "**TRAIN MISSION - DELIVERY**",
    ["mission_t"] = "**TRAIN MISSION - TRANSPORT**",
    ["mission_m"] = "**TRAIN MISSION - MAINTENANCE**",
    ["price"] = "__REWARD:__ ",
    ["price_company"] = "__COMPANY REWARD:__ ",
    ["item"] = "__ITEM:__ ",
    ["passenger"] = "__PASSENGERS:__ ",
}



function AnnounceTranslate(type, data)
    local text = ""
    if type == "start" then 
        text = "Railway Announcement:\n\nDeparture from: ~o~"..data.station_1.."~q~\nIn: ~o~"..data.time.." min~q~\nHeading to: ~o~"..data.station_2
    elseif type == "stop" then 
        text = "Railway Announcement:\n\nArrival at: ~o~"..data.station_1.."~q~\nStop duration: ~o~"..data.time.." min"
    else
        text = "Railway Announcement:\n\n"..data.custom
    end
    return text
end
