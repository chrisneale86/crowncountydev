game 'rdr3'
fx_version 'adamant'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Pogue'
description 'RPChat + NUI'
version '1.0.0'

lua54 'yes'

escrow_ignore {
    'config.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

client_scripts {
    'config.lua',
    'client/main.lua',   
    'client/chat_nui.lua', 
}

server_scripts {
    'config.lua',
    'server/main.lua',
    'server/admin.lua'
}

dependency '/assetpacks'