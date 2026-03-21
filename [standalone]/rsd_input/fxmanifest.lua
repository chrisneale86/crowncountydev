version '1.0.0'
author 'RS DEVELOPMENT'
description 'RSD INPUT https://script.redstartrp.fr'
repository 'https://script.redstartrp.fr'

fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"

lua54 'yes'

ui_page('html/ui.html') 
files {
	'html/*.html', 
    'html/*.css',
    'html/*.js',
    'html/font/*.ttf',
}

shared_scripts {
    'config/*.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

escrow_ignore {
    'config/*.lua',
}

dependency '/assetpacks'