# outsider policeman

### Instalation

- ensure in your resources.cfg file as `ensure outsider_policeman`
- remove de folder PORPS and move the content inside to your resources folder and `ensure policemanProps`
- run the `SQL` file in your database provided in the folder look at the bottom theres items to add you can modify if you want

- read the config files in there explains how to tweak things
- watch the video to learn about the script (when there's one)
- go to characters script config file and look for the function in the top called `CanRunReload` and replace with this 

```lua
Config.CanRunReload = function()
    if LocalPlayer.state.IsEscapingPrison then -- if player is excaping we need to reload player skin and then apply the outfit so this check lets it reload
        return true
    end

    if  LocalPlayer.state.IsJailed or LocalPlayer.state.IsInWagon  then -- if player is in jail or is being transported dont allow do rc so they keep the outfits
        return false
    end

    return true -- dont touch
end
```
- go to vorp core config and do replace with the below, this disables players able to respawn when they are escaping because policeman does it automatically

```lua
     CanRespawn  = function()
        if LocalPlayer.state.IsEscapingPrison then -- NEW LINE
            return false
        end

        return true -- dont touch
    end,
 ```
- in vorp core client side commands.lua function run you need to add the follow so players cant stop animation

 ```lua
 -- for the command clear
   run = function()
        local ped = PlayerPedId()
        local hogtied = IsPedHogtied(ped) == 1 or IsPedHogtied(ped) == true
        local IsBeingHogtied = IsPedBeingHogtied(ped) == 1 or IsPedBeingHogtied(ped) == true
        local beingGrapple = Citizen.InvokeNative(0x3BDFCF25B58B0415, ped)
        if hogtied or IsPedCuffed(ped) or IsBeingHogtied or beingGrapple or LocalPlayer.state.IsInWagon then
            return false
        end
        ClearPedTasksImmediately(ped)
    end,

 ```


### Dependencies

- PolyZone for RedM in my discord or my github you can find it there
- lock pick script find it in my discord or github
- you must update all vorp essential script `core characters utils inventory` they all contain new features that are used in this script

- some features require some of my scripts they are not dependencies outsider_notes for tiplines and other items to receive them as notes outsider_jobalerts to receive police alerts outsider_outfits for clothin as items 

### IMPORTANT

- make sure you dont have any system that might cause conflicts , like doorlocks , hogtie systems etc either disable in my sccript or use mine
- only sheriffs can be given jobs , anyone else need to be hired from the boss menu, the script has a devmode while true nothing will work until you restart the script everytime a player joins, its meant to test stuff only
- if you use syn society it will auto go on duty there too if you added the same locations policeman has in syn society.
- before you edit anything make sure you test, use devmode and restart each time you change things so you can test them.

### Support

- ask in my discord.