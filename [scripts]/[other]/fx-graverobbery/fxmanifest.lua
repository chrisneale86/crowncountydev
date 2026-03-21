fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author "Fixitfy"
description 'Fixitfy Grave Robbery'
version "1.2"

shared_scripts {
    "framework/*.lua",
    "config.lua",
}

client_scripts {
    "c/*.lua",
}
server_scripts {
    "config_server.lua",
    "s/*.lua",
    "versionchecker.lua"
}

lua54 'yes'

escrow_ignore {
    'config.lua',
    "config_server.lua",
    "c/opensource.lua",
    "s/opensource.lua",
    'framework/*.lua'
}
dependency '/assetpacks'