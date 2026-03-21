fx_version 'cerulean'
game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'
use_fxv2_oal 'yes'

author 'Rakan'
description 'Arena Script'
version '1.0.0'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/style.css',
    'html/script.js',
    'html/img/*.png'
}

exports {
    'GetArenaZone'
}

dependency '/assetpacks'

escrow_ignore {
    'config.lua'
}

dependency '/assetpacks'