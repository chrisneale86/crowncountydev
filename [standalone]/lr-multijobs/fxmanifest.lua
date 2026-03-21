fx_version 'cerulean'
games { 'rdr3' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'LR-Studio | Filex'
description 'Multi-Job System for VORP Framework with Syn_Society Integration'
version '2.1.4'

lua54 'yes'

escrow_ignore {
    'shared/config.lua',
    'shared/logs.lua',
    'locale.lua',
    'languages/*.lua',
    'README.md',
    'player_multijobs.sql'
}

shared_scripts {
    'shared/config.lua',
    'locale.lua',
    'languages/en.lua'
}

client_scripts {
    'client/c-main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'shared/logs.lua',
    'server/s-main.lua'
}

dependencies {
    'vorp_core',
    'vorp_menu',
    'oxmysql'
}

optional_dependencies {
    'syn_society',
    'vorp_admin'
}

client_exports {
    'IsMenuOpen',
    'CloseMenu', 
    'OpenMenu'
}

server_exports {
    'GetPlayerJobs',
    'AddPlayerJob',
    'RemovePlayerJob',
    'SetPlayerJob',
    'ValidatePlayerJob',
    'GetPlayerCurrentJob',
    'GetPlayerJobCount'
}
dependency '/assetpacks'