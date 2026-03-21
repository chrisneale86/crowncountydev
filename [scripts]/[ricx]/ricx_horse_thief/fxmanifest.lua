
fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
games {"rdr3"}
lua54 "yes"
version '1.0.14'

escrow_ignore {
    'fw_func.lua',
	'config.lua',
    'events.lua',
}
files {
    'not.js',
}

shared_scripts {
    'config.lua',
}

client_scripts {
    'client.lua',
    'events.lua',
    'not.js'
}


server_scripts {
    '@oxmysql/lib/MySQL.lua', --delete this line if you are using VORP, FOR QBR: '@oxmysql/lib/MySQL.lua', FOR REDEMRP: '@mysql-async/lib/MySQL.lua' | FOR REDEMRP-REBOOT: '@oxmysql/lib/MySQL.lua',
    'fw_func.lua',
    'server.lua',
}


export 'CreateAllowedHorse' 
--[[
    How to use at client side:
    local pedid --this is your horse ped id to make it allowed to sell at Horse Thief | Make sure pedid is networked
    exports.ricx_horse_thief:CreateAllowedHorse(pedid)
]]
dependency '/assetpacks'