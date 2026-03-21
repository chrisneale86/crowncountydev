fx_version "adamant"
game "rdr3"
author "Peashooterrr & C'Sky"

rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
this_is_a_map "yes"
lua54 'yes'

client_scripts {
	'client.lua',
	'ped_remover.lua',
  'remove_ipl.lua',
  'ped_removerinterior.lua',

}

files {
  'sdl_arm_int.xml',
  'stream/*.ytyp',
}

data_file "TIMECYCLEMOD_FILE" "sdl_arm_int.xml"
data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'

dependency '/assetpacks'
dependency '/assetpacks'
dependency '/assetpacks-redm'