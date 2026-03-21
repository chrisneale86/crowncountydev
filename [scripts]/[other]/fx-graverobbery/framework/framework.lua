Framework = "none"
onPlayerLoadEvent = "none" 
LoadTimeout = 5
if GetResourceState('vorp_core') == 'started' then
    Framework = "VORP"
    onPlayerLoadEvent = "vorp:SelectedCharacter" 
    print("^2[INFO]^0 Framework selected: ^3" .. Framework .. "^0")
elseif GetResourceState('rsg-core') == 'started' then
    Framework = "RSG"
    LoadTimeout = 5
    onPlayerLoadEvent = "RSGCore:Client:OnPlayerLoaded"
    print("^2[INFO]^0 Framework selected: ^3" .. Framework .. "^0")
else
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2000)
            print("^1[ERROR]^0 No suitable framework found. ^2Please install ^3vorp_core^2 or ^3rsg-core^2.")
            print("^1[ERROR]^0 Make sure to start ^3fx-idcard^0 after the frameworks in your ^2server.cfg^0 file.")
        end
    end)
end  

if Framework == "VORP" then
    if IsDuplicityVersion() then
        VorpCore = {}
        
        TriggerEvent("getCore", function(core)
            VorpCore = core
        end)
        VorpInv = {}
        VorpInv = exports.vorp_inventory:vorp_inventoryApi()
        function FXIsAdmin(src)
            local User = VorpCore.getUser(src)
            return User.getGroup == "admin" or IsPlayerAceAllowed(src,"group.admin")
        end
    
        function FXAddItem(src,itemName,itemCount,Metadata)
            if string.sub(itemName, 1, string.len("WEAPON_")) == "WEAPON_" then
                for i=1, itemCount do
                    exports.vorp_inventory:createWeapon(src, itemName, {}, {}, {}, function(success)
                    end)
                end
            else
                VorpInv.addItem(src, itemName, itemCount, Metadata)
            end
        end
        function FXGetItem(src,ItemName,Metadata)
            return VorpInv.getItem(src, ItemName,Metadata)
        end
        function FXGetPlayerData(src)
            local User = VorpCore.getUser(src)
            if not User then return nil end
        
            local Character = User.getUsedCharacter
            if not Character then return nil end
        
            return {
                job = Character.job,
                grade = Character.jobGrade,
                charid = Character.charIdentifier,
            }
        end

        function FXCanCarry(src,item,count)
            return VorpInv.canCarryItem(src, item, count)
        end
        function FXAddMoney(src,count, moneytype)
            local User = VorpCore.getUser(src)
            local Character = User.getUsedCharacter
            if moneytype == "cash" then
                Character.addCurrency(0,count)
            else
                Character.addCurrency(1,count)
            end
        end
    else
        --- Clientside
        progressbar = exports.vorp_progressbar:initiate()
        function FXProgress(text,time,callBack,pType,pColor,pSize)
            progressbar.start(text, time, function ()
                callBack()
            end, pType,pColor,pSize)
        end
    end
elseif Framework == "RSG" then
    if IsDuplicityVersion() then
        RSGCore = exports['rsg-core']:GetCoreObject()

        function FXIsAdmin(src)
            return RSGCore.Functions.HasPermission(src, "mod") or IsPlayerAceAllowed(src,"group.admin")
        end

        function FXAddItem(src,itemName,itemCount,Metadata)
            local Player = RSGCore.Functions.GetPlayer(tonumber(src))
            return Player.Functions.AddItem(itemName, itemCount,Metadata)
        end

        function FXGetItem(src,ItemName)
            local Player = RSGCore.Functions.GetPlayer(tonumber(src))
            local founditem = false
            for slot,item in pairs(Player.PlayerData.items) do
                if item.name:lower() == ItemName:lower() then
                    founditem = item
                    break
                end
            end
            return founditem
        end

        function FXGetPlayerData(src)
            local Player = RSGCore.Functions.GetPlayer(tonumber(src))
            return {
                job = Player.PlayerData.job.name,
                grade = Player.PlayerData.job.grade.level,
                charid = Player.PlayerData.citizenid,
            }
        end
        function FXCanCarry(src,item,count)
            local Player = RSGCore.Functions.GetPlayer(tonumber(src))
            local retval = true
            return retval
        end
        function FXAddMoney(src,count, moneytype)
            local Player = RSGCore.Functions.GetPlayer(tonumber(src))
            if moneytype == "cash" then
                Player.Functions.AddMoney('cash',count,"fx-graverobbery")
            else
                Player.Functions.AddMoney('bank',count,"fx-graverobbery")
            end
        end
    else

        function FXProgress(text, time, callBack, pType, pColor, pSize)
            -- Start the new progress circle
            if lib.progressBar({
                duration = time,
                label = text,
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                },
            }) then
                callBack()
            end
        end        
    end 
end
