### 🛠 CORE

[STANDALONE]

### 🛠 Requirements


### ✅ Main Features

- Export function to detect native game events (A powerful and indispensable tool)

### 🔧 Download & Installation

1. Download the latest version from your [keymaster].
2. Unzip the package [rsd_GetEvent.zip].
3. Ensure the resource in your resources files like this > "ensure rsd_GetEvent".
4. Remember to ensure all required scripts an run SQLs.
6. Configure what you want in the config file.
7. Start the resource and it's ready !

### 🔧 HOW TO USE
```lua
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local player = PlayerPedId()
        local size = GetNumberOfEvents(0)
        if size > 0 then
            for i = 0, size - 1 do
                local eventAtIndex = GetEventAtIndex(0, i)
                if eventAtIndex == 218595333 then --HASH OF EVENT
                    local event = exports.rsd_GetEvent:DataViewNativeGetEventData(0, i, 3) -- 3 = Event Data Size
                    if event then 
                        if tonumber(event["0"]) == ped then -- You can get more information via "event"
                            --YOUR ACTION
                        end
                    end
                end 
            end
        end
    end
end)

--LIST OF EVENT AND DATA SIZE >>> https://github.com/femga/rdr3_discoveries/blob/master/AI/EVENTS/README.md
```
### 📈 INFO.

Requirements  | [STANDALONE]
Support	      | [Discord](https://discord.gg/UsjAnRv48u)
Store	      | [Tebex](https://script.redstartrp.fr/)
Version	      | [1.0]


### © COPYRIGHT.

Powered & Copyrighted by [©StitProd]
©REDSTART
©RS DEVELOPMENT
©RS DEV