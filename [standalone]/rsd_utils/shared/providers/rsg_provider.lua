if not Provider then return end

---@class RSG_Provider : Provider
RSG_Provider = Provider:extend("RSG_Provider")

function RSG_Provider:init()
    Provider.init(self, "RSG", Config.Providers.RSG)
    self.core = nil
end

function RSG_Provider:load()
    if not self:isAvailable() then
        self:error("RSG Core not found!")
        return false
    end
    
    self.core = exports["rsg-core"]:GetCoreObject()
    
    if self.core then
        self:success("RSG Core loaded successfully!")
        self.isLoaded = true
        return true
    end
    
    self:error("Failed to load RSG Core!")
    return false
end

--------------------------------------------------------------------------------
-- PLAYER DATA
--------------------------------------------------------------------------------

function RSG_Provider:getUser(source)
    if not self.core then return nil end
    
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if player then
            return self:normalizePlayerData(player.PlayerData, source)
        end
    else
        local playerData = self.core.Functions.GetPlayerData()
        if playerData then
            return self:normalizePlayerData(playerData, nil)
        end
    end
    
    return nil
end

function RSG_Provider:getCoreUser(source)
    if not self.core or not IsDuplicityVersion() then return nil end
    
    return self.core.Functions.GetPlayer(source)
end

function RSG_Provider:normalizePlayerData(data, source)
    if not data then return nil end
    
    local charinfo = data.charinfo or {}
    local job = data.job or {}
    local gang = data.gang or {}
    local money = data.money or {}
    
    return {
        -- Identifiers
        source = source or data.source,
        identifier = data.license,
        charid = data.citizenid,
        citizenid = data.citizenid,
        
        -- Character info
        firstname = charinfo.firstname or "Unknown",
        lastname = charinfo.lastname or "Unknown",
        fullname = (charinfo.firstname or "Unknown") .. " " .. (charinfo.lastname or "Unknown"),
        age = charinfo.age,
        gender = charinfo.gender,
        birthdate = charinfo.birthdate,
        nationality = charinfo.nationality,
        
        -- Job
        job = job.name or "unemployed",
        jobgrade = job.grade and job.grade.level or 0,
        joblabel = job.label,
        jobgradename = job.grade and job.grade.name,
        onduty = job.onduty,
        
        -- Gang
        gang = gang.name or "none",
        ganggrade = gang.grade and gang.grade.level or 0,
        ganglabel = gang.label,
        
        -- Group/Permission
        group = "user", -- RSG uses ACE permissions
        
        -- Money
        money = money.cash or 0,
        cash = money.cash or 0,
        bank = money.bank or 0,
        crypto = money.crypto or 0,
        gold = money.bank or 0, -- Alias for compatibility
        
        -- Metadata
        metadata = data.metadata or {},
        hunger = data.metadata and data.metadata.hunger or 100,
        thirst = data.metadata and data.metadata.thirst or 100,
        stress = data.metadata and data.metadata.stress or 0,
        
        -- Stats
        isdead = data.metadata and data.metadata.isdead or false,
        
        -- Unified accessors
        u_job = job.name or "unemployed",
        u_jobgrade = job.grade and job.grade.level or 0,
        u_onduty = job.onduty ~= nil and job.onduty or true,
        u_name = (charinfo.firstname or "Unknown") .. " " .. (charinfo.lastname or "Unknown"),
        
        -- Raw data
        --_raw = data,
    }
end

--------------------------------------------------------------------------------
-- MONEY
--------------------------------------------------------------------------------

function RSG_Provider:getMoney(source, currency)
    if not self.core then return 0 end
    
    local currencyName = Config.CurrencyMapping.RSG[currency] or "cash"
    
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if player then
            return player.PlayerData.money[currencyName] or 0
        end
    else
        local playerData = self.core.Functions.GetPlayerData()
        if playerData and playerData.money then
            return playerData.money[currencyName] or 0
        end
    end
    
    return 0
end

function RSG_Provider:addMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    local player = self:getCoreUser(source)
    if not player then return false end
    
    local currencyName = Config.CurrencyMapping.RSG[currency] or "cash"
    player.Functions.AddMoney(currencyName, amount, reason or "unknown")
    
    self:debug(("Added %s %s to player %d"):format(tostring(amount), currencyName, source))
    return true
end

function RSG_Provider:removeMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    local player = self:getCoreUser(source)
    if not player then return false end
    
    local currencyName = Config.CurrencyMapping.RSG[currency] or "cash"
    return player.Functions.RemoveMoney(currencyName, amount, reason or "unknown")
end

function RSG_Provider:hasMoney(source, amount, currency)
    return self:getMoney(source, currency) >= amount
end

--------------------------------------------------------------------------------
-- INVENTORY
--------------------------------------------------------------------------------

function RSG_Provider:addItem(source, item, count, metadata, slot)
    if not IsDuplicityVersion() then return false end
    
    local canAdd, reason = exports['rsg-inventory']:CanAddItem(source, item, count)
    if canAdd then
        exports['rsg-inventory']:AddItem(source, item, count, slot or false, metadata or false)
        self:debug(("Added %s x %s to player %d"):format(tostring(count), item, source))
        return true
    end 
    return false
end

function RSG_Provider:removeItem(source, item, count, slot)
    if not IsDuplicityVersion() then return false end

    exports['rsg-inventory']:RemoveItem(source, item, count, slot or false)
    self:debug(("Removed %s x %s from player %d"):format(tostring(count), item, source))
    return true
end

function RSG_Provider:getItemCount(source, item)
    if not IsDuplicityVersion() then return 0 end
    
    return exports['rsg-inventory']:GetItemCount(source, item) or 0
end

function RSG_Provider:hasItem(source, item, count, notify)
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

function RSG_Provider:canCarryItem(source, item, count)
    local canAdd, _ = exports['rsg-inventory']:CanAddItem(source, item, count)
    return canAdd
end

function RSG_Provider:createUsableItem(itemName, callback)
    if not self.core or not IsDuplicityVersion() then return end
    
    self.core.Functions.CreateUseableItem(itemName, function(source, item)
        callback(source, item)
    end)
end

function RSG_Provider:openInventory(source, stashConfig)
    if not IsDuplicityVersion() then return end
    
    exports['rsg-inventory']:OpenInventory(source, stashConfig.id, {
        label = stashConfig.name,
        maxweight = stashConfig.stack or 100000,
        slots = stashConfig.slots or 50,
    })
end

function RSG_Provider:getItemMetadata(itemData)
    if not itemData then return nil end
    -- RSG uses "info" for metadata
    return itemData.info or nil
end

function RSG_Provider:setItemMetadata(source, itemData, metadata)
    if not self.core or not IsDuplicityVersion() then return false end
    if not itemData or not metadata then return false end
    
    local player = self:getCoreUser(source)
    if not player then return false end
    
    -- RSG requires removing and re-adding the item with new metadata
    local itemName = itemData.name
    local slot = itemData.slot
    
    player.Functions.RemoveItem(itemName, 1, slot)
    player.Functions.AddItem(itemName, 1, false, metadata)
    
    return true
end

--------------------------------------------------------------------------------
-- JOB
--------------------------------------------------------------------------------

function RSG_Provider:getJob(source)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade end
        local job = player.PlayerData.job
        return job.name or Config.PlayerDefaults.job, job.grade and job.grade.level or Config.PlayerDefaults.jobgrade
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.job or Config.PlayerDefaults.job, playerData.jobgrade or Config.PlayerDefaults.jobgrade
        end
    end
    return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade
end

function RSG_Provider:setJob(source, job, grade)
    local player = self:getCoreUser(source)
    if not player then return false end
    
    return player.Functions.SetJob(job, grade)
end

function RSG_Provider:getDuty(source)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return true end
        local job = player.PlayerData.job
        return job.onduty ~= nil and job.onduty or true
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.onduty ~= nil and playerData.onduty or true
        end
    end
    return true
end

function RSG_Provider:getGang(source)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return Config.PlayerDefaults.gang, Config.PlayerDefaults.ganggrade end
        local gang = player.PlayerData.gang
        return gang.name or Config.PlayerDefaults.gang, gang.grade and gang.grade.level or Config.PlayerDefaults.ganggrade
    else
        local playerData = RSD._.playerData
        if playerData then
            return playerData.gang or Config.PlayerDefaults.gang, playerData.ganggrade or Config.PlayerDefaults.ganggrade
        end
    end
    return Config.PlayerDefaults.gang, Config.PlayerDefaults.ganggrade
end

function RSG_Provider:setGang(source, gang, grade)
    local player = self:getCoreUser(source)
    if not player then return false end
    
    return player.Functions.SetGang(gang, grade)
end

--------------------------------------------------------------------------------
-- METADATA
--------------------------------------------------------------------------------

function RSG_Provider:getMetadata(source, key)
    if IsDuplicityVersion() then
        local player = self:getCoreUser(source)
        if not player then return nil end
        if key then
            return player.PlayerData.metadata[key]
        end
        return player.PlayerData.metadata
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

function RSG_Provider:setMetadata(source, key, value)
    local player = self:getCoreUser(source)
    if not player then return false end
    
    player.Functions.SetMetaData(key, value)
    return true
end

--------------------------------------------------------------------------------
-- CALLBACKS
--------------------------------------------------------------------------------

function RSG_Provider:createCallback(name, callback)
    if not self.core or not IsDuplicityVersion() then return end
    
    self.core.Functions.CreateCallback(name, function(source, cb, ...)
        callback(source, cb, ...)
    end)
end

function RSG_Provider:triggerCallback(name, callback, ...)
    if not self.core or IsDuplicityVersion() then return end
    
    self.core.Functions.TriggerCallback(name, function(...)
        callback(...)
    end, ...)
end

--------------------------------------------------------------------------------
-- SPAWN HANDLER (Server-side)
--------------------------------------------------------------------------------

function RSG_Provider:setupSpawnHandler(onPlayerLoaded)
    if not IsDuplicityVersion() then return end
    
    -- RSG triggers this event when player is fully loaded
    AddEventHandler("RSGCore:Server:PlayerLoaded", function(Player)
        local source = Player.PlayerData.source
        -- Small delay to ensure everything is ready
        Citizen.SetTimeout(500, function()
            onPlayerLoaded(source)
        end)
    end)
    
    self:debug("Spawn handler registered for RSGCore:Server:PlayerLoaded")
end

--------------------------------------------------------------------------------
-- CLIENT LISTENERS (Client-side)
--------------------------------------------------------------------------------

function RSG_Provider:setupClientListeners(onDataUpdate)
    if IsDuplicityVersion() then return end
    
    -- RSG sends full player data on any change - use it directly
    RegisterNetEvent('RSGCore:Player:SetPlayerData', function(data)
        if data then
            local normalizedData = self:normalizePlayerData(data)
            if normalizedData then
                onDataUpdate(normalizedData)
                self:debug("Player data updated")
            end
        end
    end)
    
    -- Job update event (backup - SetPlayerData should handle this)
    RegisterNetEvent('RSGCore:Client:OnJobUpdate', function(job)
        self:debug(("Job updated: %s"):format(job.name or "unknown"))
        self:refreshPlayerData()
    end)
    
    -- Gang update event
    RegisterNetEvent('RSGCore:Client:OnGangUpdate', function(gang)
        self:debug(("Gang updated: %s"):format(gang.name or "none"))
        self:refreshPlayerData()
    end)
    
    -- Money change event
    RegisterNetEvent('RSGCore:Client:OnMoneyChange', function(moneyType, amount, changeType, reason)
        self:debug(("Money %s: %s %s"):format(changeType, moneyType, tostring(amount)))
        self:refreshPlayerData()
    end)
    
    self:debug("Client listeners registered for RSG")
end

-- Register provider
if Config.CORE_USED == "RSG" or Config.AutoDetectCore then
    _G.RSG_Provider = RSG_Provider
end
