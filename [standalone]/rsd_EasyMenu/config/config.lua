--DO NOT RENAME RESSOURCE !!

Config = {}

Config.HideHUD = {false, "hui"} -- If you want t hide HUD when menu is open {bool, cmd}
Config.SoundMenu = true --If you want sound in menu
Config.CloseWhenDie = true --If you want the menu close when you die
Config.CloseOnPause = true --If you want the menu close when you're in pause menu

Config.DefaultMaxOptions = 8 -- Max Options displayed in the menu before scrolling

Config.WantCursor = true -- If you want to use possibilité of switch Cursor MODE // Keyboard MODE
Config.Language = {
	[1] = {"Cursor Mode: ~INPUT_HUD_SPECIAL~", "Cursor: ~t6~ON", "Cursor: ~e~OFF"},
	[2] = {"Index","Enter a number"},
	[3] = {"Search...", "Search an option."},
	[4] = {"Search:","Title"},
}

Config.DisableCommand = {--Disable Controls in Menu
	0xC1989F95, -- I
	0x156F7119, -- ESC
	--0x308588E6, -- ESC for bigtext
	0x4A903C11, -- ESC
	0x5B48F938, -- ESC
	0x8E90C7BB, -- ESC Use by EasyMenu
	0xE9094BA0, -- ESC
	0x3E89055A, -- ESC
}