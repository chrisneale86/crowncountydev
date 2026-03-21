version '1.0.0'
author 'RS DEVELOPMENT'
description 'RSD VOICEPEDS https://script.redstartrp.fr'
repository 'https://script.redstartrp.fr'

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

dependencies {
    'rsd_GetEvent',
}

client_script {
    "@rsd_GetEvent/client/dataview.lua",
    'client/*.lua'
}
server_script {
    'server/*.lua'
}
dependency '/assetpacks'