Config = {}
Config.Webhook = "https://discord.com/api/webhooks/1472918039975559300/yUND8-pVBWcS8M3GUlBz0wO3jS5QmYoHf4PxKcv-lDyn67X9RHp_7IoXuAJ6WdEw8dpj" --- robbery start log and reward log
Config.Language = "en"
Config.Keybinds = {
    ["startrobbery"] = 0x760A9C6F,
    ["prayanim"] = 0x2CD5343E,
    ["exit"] = 0x156F7119,
}
-- Notify text color = ~COLOR_YELLOW~  ~COLOR_RED~ ~COLOR_WHITE~
Config.Locale = {
    ["en"] = {
        --- PROMPTS ---
        ["promptitle"] = "Grave Robbery",
        ["startrobbery"] = "GRAVE ROBBERY",
        ["prayanim"] = "PRAY",
        ["exit"] = "EXIT",
        ["robbery_progress"] = "Digging..",
        --- NOTIFY -----
        ["graverobbed"] = "This grave has been robbed, try again later!",
        ["allowedjob"] = "You have a whitelisted job. You can't commit robbery!",
        ["insufficientjob"] = "This robbery cannot happen now. There are not enough lawmen!",
        ["robbery_started"] = "A grave is being robbed nearby. Look at your map!",
        ["out_of_time"] = "You can't rob a grave at this hour!",
        ["notitem"] = "You don't have the ${item} item!",
        ["find_chest"] = "chest found !",
        ["reward_item"] = "You got ${cash} dollars and ${item}",
        ["cantcarry"] = "You can't carry any more ${count}x ${item}! Empty your bag..",
        ["emptygrave"] = "No treasure in the grave :/",
        ["robbery_log"] = "Player robbed a grave and take ${cash} dollars + ${items}",
        ["robberystart_log"] = "Player grave robbery in ${coord} coordinate !",
        ["no_items_found"] = "You couldn't find an item !",
    }
}

Config.ShovelItem = {item = "shovel", label = "Shovel"} -- or Config.ShovelItem = false (Will a shovel item be required to rob a grave?)

Config.RobberySetting = {
    RobberyDelay = 30, -- How many minutes will there be a waiting time after a grave is peeled so that it can be peeled again? / 30 Minute
    ActiveJobDistance = false, -- or false ( Active job requirement to commit a robbery within a certain distance )
    ActiveJobs = { --- or ActiveJobs = false / (Active job requirement to commit a robbery)
        ["police"] = 2,
        
    }, 
    NotifyChancePercentage = 100, -- Chance percentage (e.g. 70%) or NotifyChancePercentage = false, (This feature allows sheriffs to receive notifications with a specified chance percentage)
    NotifyJobsDelay = 1, -- 1 Minute / for example, how many robbery reports sheriffs will receive every minute. Notifications from the same point cannot come again until 1 minutes have passed
    NotifyRange = 1000.0, -- 200m / Sheriffs will receive robbery tips from a maximum of a few meters away
    ----
    TimeInterval = true, -- Only robbery will take place during a certain time interval
    Start = 00,
    Finish = 5,
    ----
    RobberyProp = "p_strongbox_muddy_01x",
    ProgressBarTime = 90 -- The digging process will take 5 seconds
}

Config.AlertBlips = { --- or Config.Blip = false (Will there be a blip on the sheriffs' map when a robbery is taking place?)
    blipname = "Grave robbery !",
    blipsprite = -2018361632,
    blipscale = 0.5,
    blipmodifier = "BLIP_MODIFIER_MP_COLOR_32",
    blipradius = 5.0,
    alerttime = 1 -- After how many minutes will the blip be deleted? 1 Minute
}


Config.Rewards = {
    MaxRewardItemCount = 2, -- Maximum number of different items that can be won after a robbery
    RewardChance = 100, -- For example, after the robbery is over, you will win prizes with a 50% percent chance
    Items = {
        [1] =  {item = "provision_coin_1700_ny_tkn",   itemLabel = "1700 New Yorke Token", count = 1, chance = 1}, 
        [2] =  {item = "provision_coin_1787_cent_tkn", itemLabel = "1787 One cent Token",  count = 1, chance = 1}, 
        [3] =  {item = "provision_coin_1789_pny",      itemLabel = "1789 Penny",           count = 1, chance = 1}, 
        [4] =  {item = "provision_coin_1792_lib_qtr",  itemLabel = "1792 Liberty Quater",  count = 1, chance = 2}, 
        [5] =  {item = "provision_coin_1792_nickel",   itemLabel = "1792 Nickel",          count = 1, chance = 2}, 
        [6] =  {item = "provision_coin_1792_qtr",      itemLabel = "1792 Quater",          count = 1, chance = 3}, 
        [7] =  {item = "provision_coin_1794_slv_dlr",  itemLabel = "1794 Silver Dollar",   count = 1, chance = 3}, 
        [8] =  {item = "provision_coin_1795_hlf_eag",  itemLabel = "1795 Half Eagle",      count = 1, chance = 3}, 
        [9] =  {item = "provision_coin_1796_hlf_pny",  itemLabel = "1796 Half Penny",      count = 1, chance = 3}, 
        [10] = {item = "provision_coin_1797_gld_eag",  itemLabel = "1797 Gold Eagle",      count = 1, chance = 3}, 
        [11] = {item = "provision_coin_1798_slv_dlr",  itemLabel = "1798 Silver Dollar",   count = 1, chance = 3}, 
        [12] = {item = "provision_coin_1800_five_dlr", itemLabel = "1800 Five Dollar",     count = 1, chance = 5}, 
        [13] = {item = "provision_coin_1800_gld_dlr",  itemLabel = "1800 Gold Dollar",     count = 1, chance = 6}, 
        [14] = {item = "provision_coin_1800_gld_qtr",  itemLabel = "1800 Gold Quarter",    count = 1, chance = 7}, 
        [15] = {item = "provision_coin_1800_hlf_dime", itemLabel = "1800 Half Dime",       count = 1, chance = 10}, 
        
    --[[5] = {item = "provision_coin_1792_nickel", itemLabel = "Gold Nugget", count = 1, chance = 10},
        [5] = {item = "provision_coin_1792_nickel", itemLabel = "Gold Nugget", count = 1, chance = 10},
        [5] = {item = "provision_coin_1792_nickel", itemLabel = "Gold Nugget", count = 1, chance = 10},
        [5] = {item = "provision_coin_1792_nickel", itemLabel = "Gold Nugget", count = 1, chance = 10},]]--
    },
    MoneyChance = 50, -- For example, there is a 50 percent chance that he will find money after the robbery is over
    Cash = math.random(80, 150)
}

Config.DrawSetting = {
    DrawMarker = {distance = 2, type = 0x94FDAE17, rgba = {255, 255, 255,250}, scale = {1.0, 1.0, 0.15} }, -- or DrawMarker = false,
    --DrawLight = {distance = 2, rgba = {255, 255, 255,250}, range = 1.5, intensity = 5.0, extraZ = 1.0}, -- or DrawLight = false,
    DrawTexture = {distance = 10, textureStream = "overhead", textureName = "overhead_objective", extraZ = 2.2, width = 0.01, height = 0.01, heading = 0.251, rgba = {255, 255, 255,250}}, -- or DrawTexture = false,
}

Config.BlacklistZone = {
}

Config.GraveProps = {
    "p_gravestone01ax",
    "p_gravestone01x",
    "p_gravestone03x",
    "p_gravestone04x",
    "p_gravestone05x",
    "p_gravestone09x",
    "p_gravestone07ax",
    "p_gravestone08ax",
    "p_gravestone14ax",
    "p_gravestone16ax",
    "p_gravemarker02x",
    "p_gravestoneclean04x",
    "p_gravestoneclean06x",
    "p_gravestoneclean02ax",
    "p_gravestoneclean06ax",
}

function Notify(data)
    local text = data.text or "No message" 
    local time = data.time or 5000  
    local type = data.type or "info" 
    local dict = data.dict
    local icon = data.icon
    local color = data.color or 0
    local src = data.source
  
    if IsDuplicityVersion() then
        if Framework == "RSG" then
            text = string.gsub(text, "~.-~", "")
            TriggerClientEvent('ox_lib:notify', src, { title = text, type = type, duration = time })
        elseif Framework == "REDEMRP" then
            text = string.gsub(text, "~.-~", "")
            TriggerClientEvent("redem_roleplay:Tip", src, text, time)
        elseif Framework == "VORP" then
            if icon then
                TriggerClientEvent('vorp:ShowAdvancedRightNotification', src, text, dict, icon, color, time)
            else
                TriggerClientEvent("vorp:TipBottom",src, text, time, type)
            end
        end
    else
        if Framework == "RSG" then
            text = string.gsub(text, "~.-~", "")
            TriggerEvent('ox_lib:notify', { title = text, type = type, duration = time })
        elseif Framework == "REDEMRP" then
            text = string.gsub(text, "~.-~", "")
            TriggerEvent("redem_roleplay:Tip", text, time)
        elseif Framework == "VORP" then
            if icon then
                TriggerEvent("vorp:ShowAdvancedRightNotification", text, dict, icon, color, time)
            else
                TriggerEvent("vorp:TipBottom", text, time, type)
            end
        end
    end
end
  
function Locale(key, subs)
  local translate = Config.Locale[Config.Language][key] and Config.Locale[Config.Language][key] or "Config.Locale[" .. Config.Language .. "][" .. key .. "] doesn't exist"
  subs = subs and subs or {}
  for k, v in pairs(subs) do
      local templateToFind = '%${' .. k .. '}'
      local safeValue = tostring(v):gsub("%%", "%%%%")
      translate = translate:gsub(templateToFind, safeValue)
  end
  translate = tostring(translate):gsub("%%%%", "%%")
  return tostring(translate)
end