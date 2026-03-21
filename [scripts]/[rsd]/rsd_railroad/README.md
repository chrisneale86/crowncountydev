### 🛠 CORE

[UNIVERSAL]

### 🛠 Requirements

[rsd_input]
[rsd_GetEvent]
[rsd_EasyMenu]
[rsd_utils]

### ✅ Main Features

- Best complete train system with company, mission, trnasport, maintenance etc...

### 🔧 Download & Installation

1. Download the latest version from your [keymaster].
2. Unzip the package [rsd_railroad.zip].
3. Ensure the resource in your resources files like this > "ensure rsd_railroad".
4. Remember to ensure all required scripts an run SQLs.
6. Configure what you want in the config file.
7. Start the resource and it's ready !

For navmesh included mapping > "ensure rsd_railsextension"

### 🔧 SWITCHES

1. Commands (debug mode enabled): 

- getjunc [track_group] [switch_index]: This allows you to find the positions of the chosen switches on the chosen track group
- gettrack: This allows you to see which track index you are on
- testjunc [track_group] [switch_index] [left or right] [direction train]: This allows you to spawn a train on the nearest rails for 10 seconds to test the switch in front of you by choosing the direction of the train and that of the switch

2. Exemples:

- getjunc [1] [0] : This will teleport you to switch number 0 of the track group FREIGHT_GROUP (1) as specified in the "config_switch.lua"
- testjunc [1] [0] [0] [1] : This will spawn a train on the rails near you in direction 1 by activating switch number 0 of the track group FREIGHT_GROUP (1) in position 0

These commands allow you, in case of changing custom rails (snail, spooni etc...) to find the right switch IDs in the right place and do your configuration manually and properly. Because yes, if you change custom rails, it is possible that the switch index shift by 1 or 2 depending on the navmesh

### 📈 INFO.

Requirements  | [UNIVERSAL]
Support	      | [Discord](https://discord.gg/UsjAnRv48u)
Store	      | [Tebex](https://script.redstartrp.fr/)
Version	      | [1.0]


### © COPYRIGHT.

Powered & Copyrighted by [©StitProd]
©REDSTART
©RS DEVELOPMENT
©RS DEV