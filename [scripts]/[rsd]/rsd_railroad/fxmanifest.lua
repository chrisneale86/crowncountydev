version '2.0.0'
author 'RS DEVELOPMENT'
description 'RSD RAILROAD https://script.redstartrp.fr'
repository 'https://script.redstartrp.fr'

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'


ui_page('html/index.html') 

files {
	'html/*.html', 
    'html/*.css',
    'html/*.js',
    'html/font/*.ttf',
}

dependencies {
    'rsd_input',
    'rsd_GetEvent',
    'rsd_EasyMenu',
    'rsd_utils',
}

shared_scripts {
    'config/*.lua',
}

client_scripts {
    'client/*.lua',
    'client/module/**/*.lua',
    'integrations/c_integrations.lua',
    "@rsd_GetEvent/client/dataview.lua"
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
    'server/module/**/*.lua',
    'integrations/s_integrations.lua',
}

escrow_ignore {
    'config/*.lua',
    'integrations/*.lua',
}



dependency '/assetpacks'