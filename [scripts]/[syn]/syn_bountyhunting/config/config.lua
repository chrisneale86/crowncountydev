Config = {}
Config.vorp = true 
Config.redem = false
Config.onesync = true

Config.maxfine = 500 -- 50$ max fine
Config.maxtime = 100

Config.joblocked = false -- false allows anyone to start the missions.
------------------------ newlines
Config.joblocked2 = true  -- false allows anyone to take on bounties.
Config.joblocked3 = true -- false allows anyone to add and set up bounties, be careful as this can get abused easily. 
-----------------------------
Config.police = {"police"}
Config.bountyhunters = {"bountyhunter"}

Config.showenemyblips = false
Config.cooldown = 30 -- minutes 
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["F"] = 0xB2F377E8,
}

Config.gumjail = false 
Config.police_job = false 
Config.customjail = true -- use this to insert your own send to jail trigger 
Config.pokejail = false 

Config.sendtojail = function(id, time)
    if Config.gumjail then 
        ExecuteCommand("jail",id,time)
    elseif Config.police_job then 
        TriggerServerEvent('lawmen:JailPlayer', tonumber(id), tonumber(time))
    elseif Config.pokejail then 
        TriggerServerEvent("poke_adminjail:jail", id, time)
    elseif Config.customjail then 
        ExecuteCommand("jail " .. id .. " " .. time)
    end
end

Config.Locations = { 
    { x = 1353.38, y = -1304.39, z = 76.87, town = "rhodes"},
    { x = 2514.1569, y = -1320.5446, z = 48.5353, town = "saintdenis"},
    { x = -3620.6003, y = -2597.2446, z = -13.5762, town = "armadillo"},
    { x = 2913.5679, y = 1306.0599, z = 44.6706, town = "annesburg"},
    { x = -1806.1760, y = -346.2611, z = 164.4589, town = "strawberry"},
	{ x = -269.7423, y = 807.3997, z = 119.332, town = "valentine"},
}

Config.deliveryLocations = {
    { x = -767.144, y = -1261.2151, z = 43.6312, town = "blackwater"},  
    { x = 1353.38, y = -1304.39, z = 76.87, town = "rhodes"},
    { x = 2514.3620, y = -1320.5814, z = 48.5271, town = "saintdenis"},
    { x = -3620.6003, y = -2597.2446, z = -13.5762, town = "armadillo"},
    { x = 2913.5679, y = 1306.0599, z = 44.6706, town = "annesburg"},
    { x = -1806.1760, y = -346.2611, z = 164.4589, town = "strawberry"},
	{ x = -270.21, y = 804.4065, z = 119.4683, town = "valentine"},
}


Config.language = { 
    bountyboard = "Bounty Board",
    openmenu = "Open Menu",
    endmission = "End Mission",
    deliver = "Deliver",
    bh = "Bounty Hunting",
    mist1 = "Go To Marked Location And Kill The Criminals.",
    known = "Known Bounty Location",
    gotomarked = "Go To Marked Location And Arrest The Wanted Criminal.",
    escort = "Go To Marked Location To Escort The Client.",
    client = "Client Location",
    nojob = "No Available Jobs Check later",
    dontkill = "Dont kill marked Targets, Deliver them to location",
    delivery = "Delivery Location",
    esdist = "Escort Client to their distenation",
    cldist = "Client Destination",
    failed = "You Failed.",
    missionover = "Mission Over",
    gtd = "Go To Delivery Location.",
    startmission = "Start Mission",
    vary = "A varaity of different missions",
    checkbb = "Check Bounty Board",
    checkbb2 = "Check The Bounty Board",
    addbt = "Add New Bounty",
    addbt2 = "Add A New Bounty To The Board.",
    rbt = "Remove Bounty",
    rbt2 = "Remove a Bounty from The Board.",
    bhmen = 'Bounty Hunter Menu',
    options = "Options",
    dollar = " $",
    crimdesc = "Crime Description",
    fine = "Fine",
    jt = "Jail Time",
    minutes = " minutes",
    confirm = "Confirm",
    imgurl = "Image URL",
    sdes = "Short Description of the crime",
    fine2 = "Fine taken from bounty and paid to bounty hunter",
    jt2 = "Amount of time in minutes the bounty will be sent off",
    imgurl2 = "Image URL if any",
    confirm2 = "View & Confirm Details",
    string4 = "4th Player ID",
    man1 = "1 man",
    man2 = "2 man",
    man3 = "3 man",
    man4 = "4 man",
    tman1 = "1 Bounty Hunter",
    tman2 = "2 Bounty Hunter",
    tman3 = "3 Bounty Hunter",
    tman4 = "4 Bounty Hunter",
    ptsize = 'Select Party Size',
    ptsize2 = 'Party Size Determines payout and difficulty',
    string2 = "2nd Player ID",
    string3 = "3rd Player ID",
    bountycreated = "Bounty Created",
    youcollected = "You Collected $ ",
    youfined = "You were fined $ ",
    devpaid1 = "You Delivered and got paid $",
    devpaid2 = "You Delivered and got paid ",
    gold = " Gold",
}