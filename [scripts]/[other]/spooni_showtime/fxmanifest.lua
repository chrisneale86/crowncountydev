games { 'rdr3' }
lua54 'yes'
fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Spooni'
description 'Showtime Script'
version '4'

shared_scripts { 'config.lua' }

client_scripts {
	'client/config.lua',
    'client/bridge.lua',
    'client/main.lua',
    'client/ticketNpcHandler.lua',
}

server_scripts {
	'client/config.lua',
   	 'server/bridge.lua',
	'server/main.lua',
	'server/sv_main.lua',
}

shared_script '@ox_lib/init.lua'

requires { 'ox_lib', 'feather-menu', 'vorp_utils' }

escrow_ignore {
    'client/config.lua',
    'config.lua',
    'client/bridge.lua',
    'server/bridge.lua',
}

exports { 'StartShow' }
dependency '/assetpacks'