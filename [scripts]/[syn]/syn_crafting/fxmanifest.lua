fx_version "adamant"

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"
lua54 'yes'

client_script {'language.lua','config.lua','client.lua'}
server_script {'language.lua','config.lua','server.lua','logs.lua'}
escrow_ignore {
    'config.lua',
    'language.lua',
   	'client.lua',
    'logs.lua',
}
dependency '/assetpacks'