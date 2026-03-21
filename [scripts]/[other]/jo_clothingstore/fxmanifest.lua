author "JUMP ON studios : https://jumpon-studios.com"
documentation "https://docs.jumpon-studios.com"
version "4.1.4"
package_id "5526960"
addon_scripts {
  "jo_clothingstore_colorways",
  "jo_clothingstore_npc",
}
dependencies_version_min "jo_libs:2.8.1"

fx_version "cerulean"

rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

game "rdr3"
lua54 "yes"

escrow_ignore {
  "config/**",
}

shared_script {
  "@jo_libs/init.lua",
  "config/**.lua",
  "shared/functions.lua",
  "shared/exports.lua",
}

client_scripts {
  "client/natives.lua",
  "client/variables.lua",
  "client/functions.lua",
  "client/preview.lua",
  "client/nui.lua",
  "client/client.lua",
  "client/clothesItems.lua",
  "client/cMenu.lua",
  "client/commands.lua",
  "client/exports.lua",
  "client/debug.lua",
  "client/menus/*.lua"
}

server_scripts {
  "@oxmysql/lib/MySQL.lua",
  "server/clothesItems.lua",
  "server/server.lua",
}

jo_libs {
  "framework-bridge",
  "version-checker",
  "table",
  "hook",
  "database",
  "blip",
  "timeout",
  "component",
  "prompt",
  "dataview",
  "notification",
  "string",
  "menu",
  "player"
}

ui_page "nui://jo_libs/nui/index.html"

dependencies {
  "oxmysql",
  "jo_libs",
}

dependency '/assetpacks'