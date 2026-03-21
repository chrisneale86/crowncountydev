--> FX Manifest Version
fx_version 'adamant'
--

--> Red Dead Redemption 2 Warning
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
--

--> Lua 54
lua54 'yes'
--

--> Game
game 'rdr3'
--

--> Author
author 'ZaYn'
--

--> Description
description 'Progressive Code Ranch System'
--

--> Client Script
client_script 'Client/Main.lua'
--

-- Server Scripts
server_scripts {
	'@mysql-async/lib/MySQL.lua',

	'Server/Main.lua'
}
--

--> Shared Scripts
shared_scripts {
    '@ox_lib/init.lua',

    'Shared/*.lua'
}
--

--> Design
ui_page 'Html/Ranch.html'

files {
	'Html/Ranch.html',
    
	'Html/Webfonts/*.otf',

	'Html/Css/*.css',

	'Html/Js/*.js',

	'Html/Images/*.png',

	'Html/Images/Animals/*.png',

	'Html/Images/Items/*.png',

	'Html/Images/Troughs/*.png',

	'Html/Images/Seeds/*.png'
}
--

--> Ignore Escrow File
escrow_ignore 'Shared/*.lua'
--
dependency '/assetpacks'