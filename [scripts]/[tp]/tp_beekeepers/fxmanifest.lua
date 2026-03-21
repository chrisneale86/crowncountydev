fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Nosmakos'
description 'Titans Productions - Beekeepers'
version '2.0.4'

shared_scripts { 'config.lua', 'locales.lua' }
client_scripts { 'client/*.lua' }
server_scripts { 'server/*.lua' }

escrow_ignore {
    'config.lua',
    'locales.lua',
    'client/tp-client_progressbars.lua',
}

dependencies {
    'tp_libs',
    'tp_notify',
    'tp_inputs',
    'tpz_menu_base'
}

lua54 'yes'
dependency '/assetpacks'
dependency '/assetpacks-redm'