if not Provider then return end

---@class REDEM_Provider : Provider
REDEM_Provider = Provider:extend("REDEM_Provider")

function REDEM_Provider:init()
    Provider.init(self, "REDEM", Config.Providers.REDEM)
    self.core = nil
    self.inventory = nil
end

function REDEM_Provider:load()
    if not self:isAvailable() then
        self:error("REDEM Core not found!")
        return false
    end
    
    self.core = exports["redem_roleplay"]:RedEM()
    
    if IsDuplicityVersion() then
        -- Server-side: Get inventory API
        TriggerEvent("redemrp_inventory:getData", function(call)
            self.inventory = call
        end)
    else
        -- Client-side: Get inventory API
        TriggerEvent("redemrp_inventory:getData", function(call)
            self.inventory = call
        end)
    end
    
    if self.core then
        self:success("REDEM Core loaded successfully!")
        self.isLoaded = true
        return true
    end
    
    self:error("Failed to load REDEM Core!")
    return false
end

--------------------------------------------------------------------------------
-- PLAYER DATA
--------------------------------------------------------------------------------

function REDEM_Provider:getUser(source)
    if not self.core then return nil end
    
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if player then
            return self:normalizePlayerData(player, source)
        end
    else
        -- Client-side: get from local cache (set by init.lua)
        return RSD._.playerData
    end
    
    return nil
end

function REDEM_Provider:getCoreUser(source)
    if not self.core or not IsDuplicityVersion() then return nil end
    return self.core.GetPlayer(source)
end

function REDEM_Provider:normalizePlayerData(data, source)
    if not data then return nil end
    
    return {
        -- Identifiers
        source = source or data.source,
        identifier = data.identifier,
        charid = tostring(data.charid),
        citizenid = data.citizenid,
        
        -- Character info
        firstname = data.firstname or "Unknown",
        lastname = data.lastname or "Unknown",
        fullname = (data.firstname or "Unknown") .. " " .. (data.lastname or "Unknown"),
        
        -- Job
        job = data.job or "unemployed",
        jobgrade = data.jobgrade or 0,
        joblabel = data.job,
        onduty = true, -- REDEM doesn't have duty system
        
        -- Gang
        gang = data.gang or "none",
        ganggrade = data.ganggrade or 0,
        
        -- Group/Permission
        group = data.group or "user",
        
        -- Money
        money = data.money or 0,
        bank = data.bankmoney or 0,
        gold = data.bankmoney or 0, -- REDEM uses bank as secondary currency
        
        -- Metadata
        metadata = data.metadata or {},
        hunger = data.metadata and data.metadata.hunger or 100,
        thirst = data.metadata and data.metadata.thirst or 100,
        stress = data.metadata and data.metadata.stress or 0,
        
        -- Other
        pobox = data.pobox,
        jailed = data.jailed or 0,
        
        -- Unified accessors
        u_job = data.job or "unemployed",
        u_jobgrade = data.jobgrade or 0,
        u_onduty = true,
        u_name = (data.firstname or "Unknown") .. " " .. (data.lastname or "Unknown"),
        
        -- Raw data
        --_raw = data,
    }
end

--------------------------------------------------------------------------------
-- MONEY
--------------------------------------------------------------------------------

function REDEM_Provider:getMoney(source, currency)
    if not self.core then return 0 end
    
    local currencyName = Config.CurrencyMapping.REDEM[currency] or "money"
    
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return 0 end
        
        return player[currencyName] or 0
    else
        -- Client-side: get from local PlayerData
        local playerData = RSD._.playerData
        if playerData then
            return playerData[currencyName] or 0
        end
    end
    
    return 0
end

function REDEM_Provider:addMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    local player = self:getCoreUser(source)
    if not player then return false end
    
    local currencyName = Config.CurrencyMapping.REDEM[currency] or "money"
    
    -- REDEM uses specific methods for each currency type
    if currencyName == "bankmoney" then
        player.AddBankMoney(amount)
    else
        player.AddMoney(amount)
    end
    
    self:debug(("Added %s %s to player %d"):format(tostring(amount), currencyName, source))
    return true
end

function REDEM_Provider:removeMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    local player = self:getCoreUser(source)
    if not player then return false end
    
    local currencyName = Config.CurrencyMapping.REDEM[currency] or "money"
    
    -- REDEM uses specific methods for each currency type
    if currencyName == "bankmoney" then
        player.RemoveBankMoney(amount)
    else
        player.RemoveMoney(amount)
    end
    
    self:debug(("Removed %s %s from player %d"):format(tostring(amount), currencyName, source))
    return true
end

function REDEM_Provider:hasMoney(source, amount, currency)
    return self:getMoney(source, currency) >= amount
end

--------------------------------------------------------------------------------
-- INVENTORY
--------------------------------------------------------------------------------

function REDEM_Provider:addItem(source, item, count, metadata, slot)
    if not self.inventory or not IsDuplicityVersion() then return false end
    
    -- REDEM: metadata is passed to getItem(), not AddItem()
    local itemData
    if metadata then
        itemData = self.inventory.getItem(source, item, metadata)
    else
        itemData = self.inventory.getItem(source, item)
    end
    
    if itemData then
        itemData.AddItem(count)
        self:debug(("Added %s x %s to player %d"):format(tostring(count), item, source))
        return true
    end
    
    return false
end

function REDEM_Provider:removeItem(source, item, count, slot)
    if not self.inventory or not IsDuplicityVersion() then return false end
    
    local itemData = self.inventory.getItem(source, item)
    if itemData then
        itemData.RemoveItem(count)
        self:debug(("Removed %s x %s from player %d"):format(tostring(count), item, source))
        return true
    end
    
    return false
end

function REDEM_Provider:getItemCount(source, item)
    if not self.inventory or not IsDuplicityVersion() then return 0 end
    
    local itemData = self.inventory.getItem(source, item)
    if itemData then
        return itemData.ItemAmount or 0
    end
    
    return 0
end

function REDEM_Provider:hasItem(source, item, count, notify)
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

function REDEM_Provider:createUsableItem(itemName, callback)
    if not IsDuplicityVersion() then return end
    
    RegisterServerEvent("RegisterUsableItem:" .. itemName)
    AddEventHandler("RegisterUsableItem:" .. itemName, function(source, data)
        callback(source, data)
    end)
end

function REDEM_Provider:openInventory(source, stashConfig)
    if not IsDuplicityVersion() then return end
    
    TriggerClientEvent("redemrp_inventory:OpenStash", source, stashConfig.id, stashConfig.slots or 50)
end

function REDEM_Provider:getItemMetadata(itemData)
    if not itemData then return nil end
    -- REDEM uses "meta"
    return itemData.meta or nil
end

function REDEM_Provider:setItemMetadata(source, itemData, metadata)
    if not IsDuplicityVersion() then return false end
    if not itemData or not metadata then return false end
    
    -- REDEM uses ChangeMeta() on the item object
    local RedEMInv = exports["redemrp_inventory"]:getData()
    if RedEMInv then
        local itemName = itemData.item
        -- Find the item with matching current metadata to update it
        local currentMeta = itemData.meta or {}
        local item = RedEMInv.getItem(source, itemName, currentMeta)
        if item and item.ChangeMeta then
            item.ChangeMeta(metadata)
            return true
        end
    end
    
    return false
end

--------------------------------------------------------------------------------
-- JOB
--------------------------------------------------------------------------------

function REDEM_Provider:getJob(source)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade end
        return player.job or Config.PlayerDefaults.job, player.jobgrade or Config.PlayerDefaults.jobgrade
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.job or Config.PlayerDefaults.job, playerData.jobgrade or Config.PlayerDefaults.jobgrade
        end
    end
    return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade
end

function REDEM_Provider:setJob(source, job, grade)
    local player = self:getCoreUser(source)
    if not player then return false end
    
    player.SetJob(job)
    player.SetJobGrade(grade)
    return true
end

function REDEM_Provider:getDuty(source)
    -- REDEM doesn't have native duty system, always return true
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

function REDEM_Provider:getGang(source)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return Config.PlayerDefaults.gang, Config.PlayerDefaults.ganggrade end
        return player.gang or Config.PlayerDefaults.gang, player.ganggrade or Config.PlayerDefaults.ganggrade
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.gang or Config.PlayerDefaults.gang, playerData.ganggrade or Config.PlayerDefaults.ganggrade
        end
    end
    return Config.PlayerDefaults.gang, Config.PlayerDefaults.ganggrade
end

function REDEM_Provider:setGang(source, gang, grade)
    local player = self:getCoreUser(source)
    if not player then return false end
    
    player.SetGang(gang)
    player.SetGangGrade(grade)
    return true
end

--------------------------------------------------------------------------------
-- METADATA
--------------------------------------------------------------------------------

function REDEM_Provider:getMetadata(source, key)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return nil end
        if key then
            return player.metadata and player.metadata[key]
        end
        return player.metadata
    else
        local playerData = RSD._.playerData
        if playerData then
            if key then
                return playerData.metadata and playerData.metadata[key]
            end
            return playerData.metadata
        end
    end
    return nil
end

function REDEM_Provider:setMetadata(source, key, value)
    local player = self:getCoreUser(source)
    if not player then return false end
    
    player.SetMetaData(key, value)
    return true
end

--------------------------------------------------------------------------------
-- CALLBACKS
--------------------------------------------------------------------------------

function REDEM_Provider:createCallback(name, callback)
    if not self.core or not IsDuplicityVersion() then return end
    
    self.core.RegisterCallback(name, function(source, cb, ...)
        callback(source, cb, ...)
    end)
end

function REDEM_Provider:triggerCallback(name, callback, ...)
    if not self.core or IsDuplicityVersion() then return end
    
    self.core.TriggerCallback(name, function(...)
        callback(...)
    end, ...)
end

--------------------------------------------------------------------------------
-- SPAWN HANDLER (Server-side)
--------------------------------------------------------------------------------

function REDEM_Provider:setupSpawnHandler(onPlayerLoaded)
    if not IsDuplicityVersion() then return end
    
    -- REDEM triggers this event when player loads
    AddEventHandler("redemrp:playerLoaded", function(source, player)
        -- Small delay to ensure character data is ready
        Citizen.SetTimeout(500, function()
            onPlayerLoaded(source)
        end)
    end)
    
    self:debug("Spawn handler registered for redemrp:playerLoaded")
end

--------------------------------------------------------------------------------
-- CLIENT LISTENERS (Client-side)
--------------------------------------------------------------------------------

function REDEM_Provider:setupClientListeners(onDataUpdate)
    if IsDuplicityVersion() then return end
    
    -- REDEM sends player data updates via this event - use it directly
    RegisterNetEvent("redemrp:receivePlayerData", function(data)
        if data then
            local normalizedData = self:normalizePlayerData(data)
            if normalizedData then
                onDataUpdate(normalizedData)
                self:debug("Player data updated")
            end
        end
    end)
    
    -- Money updates - refresh all data
    RegisterNetEvent("redem:activateMoney", function(money)
        self:debug(("Money updated: %s"):format(tostring(money)))
        self:refreshPlayerData()
    end)
    
    RegisterNetEvent("redem:addMoney", function(amount)
        self:debug(("Money added: %s"):format(tostring(amount)))
        self:refreshPlayerData()
    end)
    
    RegisterNetEvent("redem:removeMoney", function(amount)
        self:debug(("Money removed: %s"):format(tostring(amount)))
        self:refreshPlayerData()
    end)
    
    self:debug("Client listeners registered for REDEM")
end

-- Register provider
if Config.CORE_USED == "REDEM" or Config.AutoDetectCore then
    _G.REDEM_Provider = REDEM_Provider
end
