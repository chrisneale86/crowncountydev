-- MenuAPI Debug - Server Side
-- This will help diagnose server-side issues with society system

local debugMode = true

local function DebugPrint(message, type)
    if not debugMode then return end
    
    local prefix = "^3[MenuAPI Debug - Server]^7"
    if type == "error" then
        prefix = "^1[MenuAPI ERROR - Server]^7"
    elseif type == "success" then
        prefix = "^2[MenuAPI SUCCESS - Server]^7"
    elseif type == "warning" then
        prefix = "^5[MenuAPI WARNING - Server]^7"
    end
    
    print(prefix .. " " .. tostring(message))
end

-- Check for VORP Core on server
Citizen.CreateThread(function()
    Citizen.Wait(2000)
    
    DebugPrint("=== Server-Side Debug Started ===", "success")
    
    if exports.vorp_core then
        DebugPrint("VORP Core exports available ✓", "success")
    else
        DebugPrint("VORP Core exports NOT available ✗", "error")
    end
end)

-- Get job info for a player
RegisterServerEvent("menuapi_debug:getjobinfo")
AddEventHandler("menuapi_debug:getjobinfo", function()
    local _source = source
    local User = exports.vorp_core:GetCore().getUser(_source)
    
    if not User then
        DebugPrint("User object not found for source: " .. _source, "error")
        return
    end
    
    local Character = User.getUsedCharacter
    if not Character then
        DebugPrint("Character not found for source: " .. _source, "error")
        return
    end
    
    local job = Character.job
    local grade = Character.jobGrade
    
    DebugPrint("Player " .. _source .. " - Job: " .. job .. " Grade: " .. grade, "success")
    
    -- Query society ledger
    exports.ghmattimysql:execute("SELECT ledger FROM society_ledger WHERE job = ?", {job}, function(result)
        local society_money = 0
        if result and result[1] then
            society_money = result[1].ledger
            DebugPrint("Society ledger for " .. job .. ": $" .. society_money, "success")
        else
            DebugPrint("No ledger entry found for job: " .. job, "warning")
        end
        
        TriggerClientEvent("menuapi_debug:sendjobinfo", _source, job, grade, society_money)
    end)
end)

-- Test deposit function
RegisterServerEvent("menuapi_debug:testdeposit")
AddEventHandler("menuapi_debug:testdeposit", function(amount)
    local _source = source
    local User = exports.vorp_core:GetCore().getUser(_source)
    
    if not User then
        DebugPrint("User object not found", "error")
        return
    end
    
    local Character = User.getUsedCharacter
    local job = Character.job
    local playerMoney = Character.money
    
    DebugPrint("Attempting deposit of $" .. amount .. " to " .. job, "warning")
    DebugPrint("Player has $" .. playerMoney, "success")
    
    if playerMoney < amount then
        DebugPrint("Player doesn't have enough money!", "error")
        TriggerClientEvent("vorp:TipRight", _source, "You don't have enough money!", 4000)
        return
    end
    
    -- Remove money from player
    Character.removeCurrency(0, amount)
    
    -- Add to society ledger
    exports.ghmattimysql:execute("UPDATE society_ledger SET ledger = ledger + ? WHERE job = ?", {amount, job}, function(affectedRows)
        if affectedRows then
            DebugPrint("Successfully added $" .. amount .. " to " .. job .. " ledger", "success")
            TriggerClientEvent("vorp:TipRight", _source, "Deposited $" .. amount .. " to society ledger", 4000)
            
            -- Verify the new balance
            exports.ghmattimysql:execute("SELECT ledger FROM society_ledger WHERE job = ?", {job}, function(result)
                if result and result[1] then
                    DebugPrint("New ledger balance: $" .. result[1].ledger, "success")
                end
            end)
        else
            DebugPrint("Failed to update ledger", "error")
        end
    end)
end)

-- Command to check society ledger (admin only)
RegisterCommand("checkledger", function(source, args)
    if source == 0 then -- Console only
        local job = args[1] or "police"
        
        exports.ghmattimysql:execute("SELECT * FROM society_ledger WHERE job = ?", {job}, function(result)
            if result and result[1] then
                print("^2=== Society Ledger Info ===^7")
                print("Job: " .. job)
                print("Balance: $" .. result[1].ledger)
                print("^2==========================^7")
            else
                print("^1No ledger found for job: " .. job .. "^7")
            end
        end)
    end
end, true)

-- Command to add money to ledger (admin/console only)
RegisterCommand("addledger", function(source, args)
    if source == 0 then -- Console only
        local job = args[1] or "police"
        local amount = tonumber(args[2]) or 100
        
        exports.ghmattimysql:execute("UPDATE society_ledger SET ledger = ledger + ? WHERE job = ?", {amount, job}, function(affectedRows)
            if affectedRows then
                print("^2Added $" .. amount .. " to " .. job .. " ledger^7")
                
                exports.ghmattimysql:execute("SELECT ledger FROM society_ledger WHERE job = ?", {job}, function(result)
                    if result and result[1] then
                        print("^2New balance: $" .. result[1].ledger .. "^7")
                    end
                end)
            else
                print("^1Failed to update ledger^7")
            end
        end)
    end
end, true)

-- Command to set ledger balance (admin/console only)
RegisterCommand("setledger", function(source, args)
    if source == 0 then -- Console only
        local job = args[1] or "police"
        local amount = tonumber(args[2]) or 0
        
        exports.ghmattimysql:execute("UPDATE society_ledger SET ledger = ? WHERE job = ?", {amount, job}, function(affectedRows)
            if affectedRows then
                print("^2Set " .. job .. " ledger to $" .. amount .. "^7")
            else
                print("^1Failed to update ledger^7")
            end
        end)
    end
end, true)

-- Monitor all society-related events
AddEventHandler("syn_society:server:depositcash", function()
    DebugPrint("depositcash event triggered", "warning")
end)

AddEventHandler("syn_society:server:withdrawcash", function()
    DebugPrint("withdrawcash event triggered", "warning")
end)

DebugPrint("Server-side debug loaded ✓", "success")
print("^3=== Server Console Commands ===^7")
print("^2checkledger [job]^7 - Check society ledger balance")
print("^2addledger [job] [amount]^7 - Add money to ledger")
print("^2setledger [job] [amount]^7 - Set ledger balance")
print("^3==============================^7")
