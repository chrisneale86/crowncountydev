fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '@outsider'
lua54 'yes'

name 'outsider policeman'
description 'outsider policeman a law script for redm'
version '1.0.3'

shared_scripts {
    'shared/*.lua',
}

client_scripts {
    '@PolyZone/client.lua',
    '@vorp_core/client/dataview.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua',

}
server_scripts {
    'logs_config.lua',
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
}

files {
    'web/**/*',
}


ui_page 'web/index.html'

escrow_ignore { 'shared/*.lua', 'PROPS', 'logs_config.lua' }

dependencies {
    'PolyZone',
    'vorp_utils',
}

dependency '/assetpacks'