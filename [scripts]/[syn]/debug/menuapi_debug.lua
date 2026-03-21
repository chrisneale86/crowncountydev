-- MenuAPI Debug Script for RedM/VORP
-- Place this in your resources folder and start it to debug menu issues

fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"
lua54 'yes'

-- Client-side debug
client_script 'menuapi_debug_client.lua'

-- Server-side debug
server_script 'menuapi_debug_server.lua'
