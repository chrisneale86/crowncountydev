if not Provider then return end

---@class VORP_Provider : Provider
VORP_Provider = Provider:extend("VORP_Provider")

function VORP_Provider:init()
    Provider.init(self, "VORP", Config.Providers.VORP)
    self.core = nil
    self.inventory = nil
end

function VORP_Provider:load()
    if not self:isAvailable() then
        self:error("VORP Core not found!")
        return false
    end
    
    if IsDuplicityVersion() then
        -- Server-side
        TriggerEvent("getCore", function(core)
            self.core = core
        end)
        
        -- Load inventory API
        if GetResourceState(self.config.inventory_resource) == 'started' then
            self.inventory = exports.vorp_inventory:vorp_inventoryApi()
        end
    else
        -- Client-side
        TriggerEvent("getCore", function(core)
            self.core = core
        end)
    end
    
    if self.core then
        self:success("VORP Core loaded successfully!")
        self.isLoaded = true
        return true
    end
    
    self:error("Failed to load VORP Core!")
    return false
end

--------------------------------------------------------------------------------
-- PLAYER DATA
--------------------------------------------------------------------------------

function VORP_Provider:getUser(source)
    if not self.core then return nil end
    
    if IsDuplicityVersion() then
        local character = self:getCoreUser(source)
        if character then
            return self:normalizePlayerData(character, source)
        end
    else
        -- Client-side: get from local cache (set by init.lua)
        return RSD._.playerData
    end
    
    return nil
end

function VORP_Provider:getCoreUser(source)
    if not self.core or not IsDuplicityVersion() then return nil end
    
    local user = self.core.getUser(source)
    if user then
        return user.getUsedCharacter
    end
    return nil
end

function VORP_Provider:normalizePlayerData(data, source)
    if not data then return nil end
    
    return {
        -- Identifiers
        source = source,
        identifier = data.identifier,
        charid = tostring(data.charIdentifier),
        citizenid = tostring(data.charIdentifier),
        
        -- Character info
        firstname = data.firstname or "Unknown",
        lastname = data.lastname or "Unknown",
        fullname = (data.firstname or "Unknown") .. " " .. (data.lastname or "Unknown"),
        age = data.age,
        gender = data.gender,
        
        -- Job
        job = data.job,
        jobgrade = data.jobGrade,
        joblabel = data.jobLabel,
        onduty = true, -- VORP doesn't have duty system
        
        -- Gang (VORP doesn't have gangs by default)
        gang = Config.PlayerDefaults.gang,
        ganggrade = Config.PlayerDefaults.ganggrade,
        
        -- Group/Permission
        group = data.group,
        
        -- Money
        money = data.money or 0,
        gold = data.gold or 0,
        rol = data.rol or 0,
        
        -- Stats
        xp = data.xp or 0,
        isdead = data.isdead or false,
        
        -- Appearance
        skin = data.skin,
        comps = data.comps,
        
        -- Status
        status = data.status,
        coords = data.coords,
        
        -- Unified accessors
        u_job = data.job,
        u_jobgrade = data.jobGrade,
        u_onduty = true,
        u_name = (data.firstname or "Unknown") .. " " .. (data.lastname or "Unknown"),
        
        -- Raw data
        --_raw = data,
    }
end

--------------------------------------------------------------------------------
-- MONEY
--------------------------------------------------------------------------------

function VORP_Provider:getMoney(source, currency)
    if not self.core then return 0 end
    
    local currencyName = Config.CurrencyMapping.VORP[currency] or "money"
    
    if IsDuplicityVersion() then
        local user = self:getCoreUser(source)
        if not user then return 0 end
        
        return user[currencyName] or 0
    else
        -- Client-side: get from local PlayerData
        local playerData = RSD._.playerData
        if playerData then
            return playerData[currencyName] or 0
        end
    end
    
    return 0
end

function VORP_Provider:addMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    local user = self:getCoreUser(source)
    if not user then return false end
    
    local currencyName = Config.CurrencyMapping.VORP[currency] or "money"
    user.addCurrency(currency, amount)
    self:debug(("Added %s %s to player %d"):format(tostring(amount), currencyName, source))
    return true
end

function VORP_Provider:removeMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    local user = self:getCoreUser(source)
    if not user then return false end
    
    local currencyName = Config.CurrencyMapping.VORP[currency] or "money"
    user.removeCurrency(currency, amount)
    self:debug(("Removed %s %s from player %d"):format(tostring(amount), currencyName, source))
    return true
end

function VORP_Provider:hasMoney(source, amount, currency)
    return self:getMoney(source, currency) >= amount
end

--------------------------------------------------------------------------------
-- INVENTORY
--------------------------------------------------------------------------------

function VORP_Provider:addItem(source, item, count, metadata, slot)
    if not self.inventory or not IsDuplicityVersion() then return false end
    
    local canCarryItem = self.inventory.canCarryItem(source, item, count)
    
    if canCarryItem then
        if metadata then
            -- VORP supports metadata in addItem
            self.inventory.addItem(source, item, count, metadata)
        else
            self.inventory.addItem(source, item, count)
        end
        self:debug(("Added %s x %s to player %d"):format(tostring(count), item, source))
        return true
    end
    
    return false
end

function VORP_Provider:removeItem(source, item, count, slot)
    if not self.inventory or not IsDuplicityVersion() then return false end
    
    self.inventory.subItem(source, item, count)
    self:debug(("Removed %s x %s from player %d"):format(tostring(count), item, source))
    return true
end

function VORP_Provider:getItemCount(source, item)
    if not self.inventory or not IsDuplicityVersion() then return 0 end
    return self.inventory.getItemCount(source, item) or 0
end

function VORP_Provider:hasItem(source, item, count, notify)
    local countitem = self:getItemCount(source, item) or 0
    if countitem >= count then
        return true
    else
        if notify then
            RSD.Utils.NotifyBottom(source, Config.Language.not_enough_items, 1500)
        end
        return false
    end
end

function VORP_Provider:canCarryItem(source, item, count)
    if not self.inventory or not IsDuplicityVersion() then return false end

    return self.inventory.canCarryItem(source, item, count)
end

function VORP_Provider:createUsableItem(itemName, callback)
    if not self.inventory or not IsDuplicityVersion() then return end
    
    self.inventory.RegisterUsableItem(itemName, function(data)
        callback(data.source, data)
    end)
end

function VORP_Provider:openInventory(source, stashConfig)
    if not IsDuplicityVersion() then return end
    
    local config = {
        id = stashConfig.id,
        name = stashConfig.name,
        limit = tonumber(stashConfig.stack),
        acceptWeapons = stashConfig.acceptWeapons ~= false,
        shared = stashConfig.shared or false,
        ignoreItemStackLimit = stashConfig.ignoreItemStackLimit or false,
    }
    
    -- Register inventory if not exists
    local created = exports.vorp_inventory:isCustomInventoryRegistered(stashConfig.id)
    if not created then
        exports.vorp_inventory:registerInventory(config)
    end
    
    exports.vorp_inventory:openInventory(source, stashConfig.id)
end

function VORP_Provider:getItemMetadata(itemData)
    if not itemData then return nil end
    -- VORP uses "item.metadata"
    if itemData.item and itemData.item.metadata then
        return itemData.item.metadata
    end
    return nil
end

function VORP_Provider:setItemMetadata(source, itemData, metadata)
    if not self.inventory or not IsDuplicityVersion() then return false end
    if not itemData or not metadata then return false end
    
    -- VORP has a native API for setting metadata
    if itemData.item and itemData.item.mainid then
        self.inventory.setItemMetadata(source, itemData.item.mainid, metadata, 1)
        return true
    end
    
    return false
end

--------------------------------------------------------------------------------
-- JOB
--------------------------------------------------------------------------------

function VORP_Provider:getJob(source)
    if IsDuplicityVersion() then
        local user = self:getCoreUser(source)
        if not user then return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade end
        return user.job or Config.PlayerDefaults.job, user.jobGrade or Config.PlayerDefaults.jobgrade
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.job or Config.PlayerDefaults.job, playerData.jobgrade or Config.PlayerDefaults.jobgrade
        end
    end
    return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade
end

function VORP_Provider:getGang(source)
    -- VORP doesn't have gangs by default
    if IsDuplicityVersion() then
        return Config.PlayerDefaults.gang, Config.PlayerDefaults.ganggrade
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.gang or Config.PlayerDefaults.gang, playerData.ganggrade or Config.PlayerDefaults.ganggrade
        end
    end
    return Config.PlayerDefaults.gang, Config.PlayerDefaults.ganggrade
end

function VORP_Provider:getMetadata(source, key)
    if IsDuplicityVersion() then
        local user = self:getCoreUser(source)
        if not user then return nil end
        -- VORP stores some data in the character object
        if key then
            return user[key]
        end
        return user
    else
        local playerData = RSD._.playerData
        if playerData then
            if key then
                return playerData[key]
            end
            return playerData
        end
    end
    return nil
end

function VORP_Provider:setJob(source, job, grade)
    local user = self:getCoreUser(source)
    if not user then return false end
    
    user.setJob(job)
    user.setJobGrade(grade)
    return true
end

function VORP_Provider:getDuty(source)
    -- VORP doesn't have native duty system, always return true
    if IsDuplicityVersion() then
        return true
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.onduty ~= nil and playerData.onduty or true
        end
    end
    return true
end

--------------------------------------------------------------------------------
-- CALLBACKS
--------------------------------------------------------------------------------

function VORP_Provider:createCallback(name, callback)
    if not self.core or not IsDuplicityVersion() then return end
    
    self.core.addRpcCallback(name, function(source, cb, ...)
        callback(source, cb, ...)
    end)
end

function VORP_Provider:triggerCallback(name, callback, ...)
    if not self.core or IsDuplicityVersion() then return end
    
    self.core.RpcCall(name, function(...)
        callback(...)
    end, ...)
end

--------------------------------------------------------------------------------
-- SPAWN HANDLER (Server-side)
--------------------------------------------------------------------------------

function VORP_Provider:setupSpawnHandler(onPlayerLoaded)
    if not IsDuplicityVersion() then return end
    
    -- VORP triggers this event when player selects a character
    AddEventHandler("vorp:SelectedCharacter", function(source, character)
        -- Small delay to ensure character data is fully loaded
        Citizen.SetTimeout(500, function()
            onPlayerLoaded(source)
        end)
    end)
    
    self:debug("Spawn handler registered for vorp:SelectedCharacter")
end

--------------------------------------------------------------------------------
-- CLIENT LISTENERS (Client-side)
--------------------------------------------------------------------------------

function VORP_Provider:setupClientListeners(onDataUpdate)
    if IsDuplicityVersion() then return end
    
    -- Job changes
    RegisterNetEvent("vorp:playerJobChange", function(newJob, oldJob)
        self:debug(("Job changed: %s -> %s"):format(oldJob or "none", newJob))
        self:refreshPlayerData()
    end)
    
    -- Job grade changes
    RegisterNetEvent("vorp:playerJobGradeChange", function(newGrade, oldGrade)
        self:debug(("Job grade changed: %s -> %s"):format(oldGrade or 0, newGrade))
        self:refreshPlayerData()
    end)
    
    -- Job label changes
    RegisterNetEvent("vorp:playerJobLabelChange", function(newLabel)
        self:debug(("Job label changed: %s"):format(newLabel))
        self:refreshPlayerData()
    end)
    
    -- Group changes
    RegisterNetEvent("vorp:playerGroupChange", function(newGroup, oldGroup)
        self:debug(("Group changed: %s -> %s"):format(oldGroup or "user", newGroup))
        self:refreshPlayerData()
    end)
    
    -- State bags (VORP 4.0+) - any character change
    local playerId = PlayerId()
    if playerId then
        AddStateBagChangeHandler("Character", nil, function(bagName, key, value, reserved, replicated)
            local myBag = ("player:%d"):format(GetPlayerServerId(playerId))
            if bagName == myBag and value then
                self:debug(("State bag updated: %s"):format(key))
                self:refreshPlayerData()
            end
        end)
    end
    
    self:debug("Client listeners registered for VORP")
end

-- Register provider
if Config.CORE_USED == "VORP" or Config.AutoDetectCore then
    _G.VORP_Provider = VORP_Provider
end
