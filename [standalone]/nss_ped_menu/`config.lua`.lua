---@type NssPedMenuConfig
Config = {}

-- See folder languages for available locales
Config.language = "en"

-- If true, the script will print debug messages to the console
Config.Debug = false

-- Menu alignment, possible values: 'top-left', 'top-right', 'bottom-left', 'bottom-right', 'center', 'top', 'bottom', 'left', 'right'
-- New since version 1.1.0
Config.MenuAlign = 'top-right'

-- Command to open the ped selection menu
Config.OpenCommand = 'pedmenu'

-- Distance to close the menu automatically when walking away from the preview ped
Config.CloseMenuDistanceInMeters = 5.0

-- If false, you can only see the preview Peds as the main character
Config.PedsPreviewAlways = true

-- Cooldown in milliseconds for the ped attack feature
Config.CooldownPedAttackInMs = 2000

-- Define groups that are authorized to use the ped selection feature, e.g. admin, support, moderator, etc...
Config.AuthorizedGroups = {
    admin = true,
}

-- Define individual Steam IDs that are authorized to use the ped selection feature
Config.AuthorizedSteamIDs = {
    ["steam:1100001069534f3"] = true,
    ["steam:123456789"] = true,
    ["steam:11000011c675953"] = true, -- If you are in admin group this is not needed.
}