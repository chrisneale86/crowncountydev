version '2.0.0'
author 'RS DEVELOPMENT'
description 'RSD_UTILS - Universal Core Wrapper | https://script.redstartrp.fr'
repository 'https://script.redstartrp.fr'

fx_version "cerulean"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

shared_scripts {
    'config/*.lua',
    'shared/class.lua',
    'shared/providers/*.lua',
}

client_scripts {
    'client/_init.lua',
    'client/bridge.lua',
    'client/callbacks.lua',
    'client/notify.lua',
    'client/utils.lua',
    'client/propplacer.lua',
    'client/legacy.lua', -- V1 compatibility
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/_init.lua',
    'server/bridge.lua',
    'server/callbacks.lua',
    'server/utils.lua',
    'server/legacy.lua', -- V1 compatibility
}

escrow_ignore {
    'config/*.lua',
    'shared/providers/*.lua', -- Providers
}

exports {
    'GetBridge',
    'GetUtils',
    'GetProvider',
    'Notify',
    'CORE', -- V1 compatibility
    'UTILS', -- V1 compatibility
}

server_exports {
    'GetBridge',
    'GetUtils',
    'GetProvider',
    'CORE', -- V1 compatibility
    'UTILS', -- V1 compatibility
}

dependency '/assetpacks'