fx_version 'cerulean'
game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'your_server'
description 'VORP Train Ticket System + Syn Ledger (society_ledger) deposit via oxmysql + ticket images'
version '1.2.2'

ui_page 'html/index.html'

files {
  'html/index.html',
  'html/app.js',
  'html/style.css',
  'html/img/*.png'
}

shared_script 'config.lua'
client_script 'client.lua'
server_script 'server.lua'

dependencies {
  'vorp_core',
  'vorp_inventory',
  'oxmysql'
}
