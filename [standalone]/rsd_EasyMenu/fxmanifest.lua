version '2.0.0'
author 'RS DEVELOPMENT'
description 'RSD EASY MENU https://script.redstartrp.fr'
repository 'https://script.redstartrp.fr'

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

ui_page('html/index.html') 
files {
	'html/*', 
    'html/js/*', 
    'html/font/*',
    'html/img/*',
}

dependencies {
    'rsd_notify',
}

shared_scripts {
    'config/*.lua',
}

client_script {
    'client/*.lua',
    'client/module/**/*.lua',
}

server_script {
    'server/*.lua',
}

escrow_ignore {
    'config/*.lua',
}


dependency '/assetpacks'