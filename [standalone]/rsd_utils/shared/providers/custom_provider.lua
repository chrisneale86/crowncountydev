--[[
    RSD_UTILS V2 - Custom Provider Template
    
    This is a template for creating your own provider.
    Copy this file and modify it for your custom core.
    
    To use your custom provider:
    1. Set Config.CORE_USED = "CUSTOM" in config.lua
    2. Define your core settings in Config.Providers.CUSTOM
    3. Implement all the required methods below
]]

if not Provider then return end

---@class CUSTOM_Provider : Provider
CUSTOM_Provider = Provider:extend("CUSTOM_Provider")

function CUSTOM_Provider:init()
    Provider.init(self, "CUSTOM", Config.Providers.CUSTOM)
    self.core = nil
    self.inventory = nil
end

function CUSTOM_Provider:load()
    if not self:isAvailable() then
        self:error("Custom Core not found!")
        return false
    end
    
    -- ============================================================
    -- IMPLEMENT: Load your core here
    -- Example:
    -- self.core = exports["your_core"]:GetCore()
    -- ============================================================
    
    if self.core then
        self:success("Custom Core loaded successfully!")
        self.isLoaded = true
        return true
    end
    
    self:error("Failed to load Custom Core!")
    return false
end

--------------------------------------------------------------------------------
-- PLAYER DATA
--------------------------------------------------------------------------------

function CUSTOM_Provider:getUser(source)
    if not self.core then return nil end
    
    -- ============================================================
    -- IMPLEMENT: Get player data from your core
    -- Return normalized data using self:normalizePlayerData()
    -- ============================================================
    
    return nil
end

function CUSTOM_Provider:getCoreUser(source)
    if not self.core or not IsDuplicityVersion() then return nil end
    
    -- ============================================================
    -- IMPLEMENT: Get raw user/player object from your core
    -- ============================================================
    
    return nil
end

function CUSTOM_Provider:normalizePlayerData(data, source)
    if not data then return nil end
    
    -- ============================================================
    -- IMPLEMENT: Normalize your core's player data to the unified format
    -- ============================================================
    
    return {
        -- Identifiers
        source = source,
        identifier = "", -- Unique player identifier
        charid = "",     -- Character ID
        citizenid = "",  -- Citizen ID (if applicable)
        
        -- Character info
        firstname = "Unknown",
        lastname = "Unknown",
        fullname = "Unknown Unknown",
        age = 0,
        gender = "male",
        
        -- Job
        job = Config.PlayerDefaults.job,
        jobgrade = Config.PlayerDefaults.jobgrade,
        joblabel = "Unemployed",
        onduty = true, -- Implement based on your core
        
        -- Gang
        gang = Config.PlayerDefaults.gang,
        ganggrade = Config.PlayerDefaults.ganggrade,
        
        -- Group/Permission
        group = "user",
        
        -- Money (adjust based on your core's currency system)
        money = 0,
        bank = 0,
        gold = 0,
        
        -- Metadata
        metadata = {},
        
        -- Unified accessors (REQUIRED for compatibility)
        u_job = Config.PlayerDefaults.job,
        u_jobgrade = Config.PlayerDefaults.jobgrade,
        u_onduty = true,
        u_name = "Unknown Unknown",
        
        -- Raw data
        --_raw = data, - OPTIONAL
    }
end

--------------------------------------------------------------------------------
-- MONEY
--------------------------------------------------------------------------------

function CUSTOM_Provider:getMoney(source, currency)
    if not self.core or not IsDuplicityVersion() then return 0 end
    
    -- ============================================================
    -- IMPLEMENT: Get player's money by currency type
    -- currency: 0 = cash, 1 = bank/gold, 2 = other
    -- ============================================================
    
    return 0
end

function CUSTOM_Provider:addMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    -- ============================================================
    -- IMPLEMENT: Add money to player
    -- Return true on success, false on failure
    -- ============================================================
    
    return false
end

function CUSTOM_Provider:removeMoney(source, amount, currency, reason)
    if not self.core or not IsDuplicityVersion() then return false end
    
    -- ============================================================
    -- IMPLEMENT: Remove money from player
    -- Return true on success, false on failure
    -- ============================================================
    
    return false
end

--------------------------------------------------------------------------------
-- INVENTORY
--------------------------------------------------------------------------------

function CUSTOM_Provider:addItem(source, item, count, metadata, slot)
    if not IsDuplicityVersion() then return false end
    
    -- ============================================================
    -- IMPLEMENT: Add item to player's inventory
    -- Return true on success, false on failure (e.g., inventory full)
    -- ============================================================
    
    return false
end

function CUSTOM_Provider:removeItem(source, item, count, slot)
    if not IsDuplicityVersion() then return false end
    
    -- ============================================================
    -- IMPLEMENT: Remove item from player's inventory
    -- Return true on success, false on failure
    -- ============================================================
    
    return false
end

function CUSTOM_Provider:getItemCount(source, item)
    if not IsDuplicityVersion() then return 0 end
    
    -- ============================================================
    -- IMPLEMENT: Get the count of a specific item
    -- ============================================================
    
    return 0
end

function CUSTOM_Provider:createUsableItem(itemName, callback)
    if not IsDuplicityVersion() then return end
    
    -- ============================================================
    -- IMPLEMENT: Register a usable item
    -- callback(source, data) will be called when item is used
    -- ============================================================
end

function CUSTOM_Provider:openInventory(source, stashConfig)
    if not IsDuplicityVersion() then return end
    
    -- ============================================================
    -- IMPLEMENT: Open a stash/secondary inventory
    -- stashConfig = { label, maxweight, slots, shared, ... }
    -- ============================================================
end

function CUSTOM_Provider:getItemMetadata(itemData)
    -- ============================================================
    -- IMPLEMENT: Get item metadata from usable item callback
    -- Return the metadata table from your core's item data structure
    -- Examples:
    --   RSG: return itemData.info
    --   VORP: return itemData.item.metadata
    --   REDEM: return itemData.meta
    -- ============================================================
    return nil
end

function CUSTOM_Provider:setItemMetadata(source, itemData, metadata)
    -- ============================================================
    -- IMPLEMENT: Set item metadata (update existing item)
    -- Use your core's API to update the item's metadata
    -- Return true on success, false on failure
    -- ============================================================
    return false
end

--------------------------------------------------------------------------------
-- JOB
--------------------------------------------------------------------------------

function CUSTOM_Provider:getJob(source)
    -- ============================================================
    -- IMPLEMENT: Get player's job name and grade
    -- Return: jobName, gradeLevel
    -- ============================================================
    
    return Config.PlayerDefaults.job, Config.PlayerDefaults.jobgrade
end

function CUSTOM_Provider:setJob(source, job, grade)
    -- ============================================================
    -- IMPLEMENT: Set player's job
    -- Return true on success
    -- ============================================================
    
    return false
end

function CUSTOM_Provider:getDuty(source)
    -- ============================================================
    -- IMPLEMENT: Get player's duty status
    -- Return: true (on duty) or false (off duty)
    -- ============================================================
    
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

function CUSTOM_Provider:getGang(source)
    -- ============================================================
    -- IMPLEMENT: Get player's gang name and grade
    -- Return: gangName, gradeLevel
    -- ============================================================
    
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

function CUSTOM_Provider:setGang(source, gang, grade)
    -- ============================================================
    -- IMPLEMENT: Set player's gang
    -- Return true on success
    -- ============================================================
    
    return false
end

--------------------------------------------------------------------------------
-- METADATA
--------------------------------------------------------------------------------

function CUSTOM_Provider:getMetadata(source, key)
    -- ============================================================
    -- IMPLEMENT: Get player metadata
    -- If key is provided, return that specific value
    -- If key is nil, return all metadata
    -- ============================================================
    
    if IsDuplicityVersion() then
        -- Server-side implementation
        return nil
    else
        -- Client-side fallback
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

function CUSTOM_Provider:setMetadata(source, key, value)
    -- ============================================================
    -- IMPLEMENT: Set player metadata
    -- Return true on success
    -- ============================================================
    
    return false
end

--------------------------------------------------------------------------------
-- CALLBACKS
--------------------------------------------------------------------------------

function CUSTOM_Provider:createCallback(name, callback)
    if not IsDuplicityVersion() then return end
    
    -- ============================================================
    -- IMPLEMENT: Create a server callback
    -- callback(source, cb, ...) where cb is the response function
    -- ============================================================
    
    -- Fallback: Use RSD's built-in callback system
    RegisterNetEvent("rsdv2:callback:" .. name, function(...)
        local src = source
        callback(src, function(...)
            TriggerClientEvent("rsdv2:callback:response:" .. name, src, ...)
        end, ...)
    end)
end

function CUSTOM_Provider:triggerCallback(name, callback, ...)
    if IsDuplicityVersion() then return end
    
    -- ============================================================
    -- IMPLEMENT: Trigger a server callback from client
    -- ============================================================
    
    -- Fallback: Use RSD's built-in callback system
    local args = {...}
    RegisterNetEvent("rsdv2:callback:response:" .. name, function(...)
        callback(...)
    end)
    TriggerServerEvent("rsdv2:callback:" .. name, table.unpack(args))
end

--------------------------------------------------------------------------------
-- SPAWN HANDLER (Server-side)
--------------------------------------------------------------------------------

function CUSTOM_Provider:setupSpawnHandler(onPlayerLoaded)
    if not IsDuplicityVersion() then return end
    
    -- ============================================================
    -- IMPLEMENT: Register your core's player loaded event
    -- 
    -- Example:
    -- AddEventHandler("yourcore:playerLoaded", function(source, player)
    --     Citizen.SetTimeout(500, function()
    --         onPlayerLoaded(source)
    --     end)
    -- end)
    --
    -- If your core doesn't have a specific event, the client will
    -- trigger "rsd_utils:PlayerHasSpawned" as a fallback
    -- ============================================================
    
    -- Fallback: Use a generic player spawned event
    -- The client will trigger this when it detects the player is ready
    self:debug("Using fallback spawn detection (client-triggered)")
end

--------------------------------------------------------------------------------
-- CLIENT LISTENERS (Client-side)
--------------------------------------------------------------------------------

function CUSTOM_Provider:setupClientListeners(onDataUpdate)
    if IsDuplicityVersion() then return end
    
    -- ============================================================
    -- IMPLEMENT: Register your core's data update events
    -- 
    -- Example:
    -- RegisterNetEvent("yourcore:playerDataUpdated", function(data)
    --     -- Option 1: If event sends all data, use it directly
    --     local normalizedData = self:normalizePlayerData(data)
    --     onDataUpdate(normalizedData)
    --     
    --     -- Option 2: If event only notifies of change, refresh from server
    --     self:refreshPlayerData()
    -- end)
    --
    -- RegisterNetEvent("yourcore:jobChanged", function()
    --     self:refreshPlayerData()
    -- end)
    -- ============================================================
    
    self:debug("Custom client listeners not implemented - using fallback")
end

-- Register provider only if CUSTOM is selected
if Config.CORE_USED == "CUSTOM" then
    _G.CUSTOM_Provider = CUSTOM_Provider
end
