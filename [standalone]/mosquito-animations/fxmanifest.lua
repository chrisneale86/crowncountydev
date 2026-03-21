fx_version "cerulean"
game "rdr3"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

server_scripts {
	"config.lua",
	"server/server.lua",
	"server/ik_relay.lua",
}

client_scripts {
	"client/checker_func.lua",
	"client/interact_funcs.lua",
	"interaction_info.lua",
	"config.lua",
	"animations_locked.lua",
	"animations.lua",
	"client/dataview.lua",
	"client/notify.lua",
	"client/client.lua",
	"client/commands.lua",
	"client/pointing.lua",
	"client/quickmenu.lua",
	"client/menu.lua",
	"client/interaction.lua",
	"client/walkanim.lua",
	"client/propTool.lua"
}

files {
	"ui/index.html",
	"ui/style.css",
	"ui/script.js",
	"ui/chineserocks.ttf",
	"ui/imgs/*.png"
}

escrow_ignore {
	"client/checker_func.lua",
	"client/menu.lua",
	"client/commands.lua",
	"client/dataview.lua",
	"animations.lua",
	"config.lua",
	"interaction_info.lua"
}

ui_page "ui/index.html"

dependency '/assetpacks'