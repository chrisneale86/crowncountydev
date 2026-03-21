version '1.0.0'
author 'RS DEVELOPMENT'
description 'RSD GETEVENT https://script.redstartrp.fr'
repository 'https://script.redstartrp.fr'

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'


client_script {
	'client/*.lua',
	'js/*.js',
}

server_script {
	'server/*.lua',
}

client_exports {
	'DataViewNativeGetEventData',
}

escrow_ignore {
    'client/dataview.lua',
}
dependency '/assetpacks'