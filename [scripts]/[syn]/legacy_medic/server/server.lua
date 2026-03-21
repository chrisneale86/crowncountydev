local VorpCore = {}
local VORPInv = {}

local VORPInv = exports.vorp_inventory:vorp_inventoryApi()

TriggerEvent("getCore", function(core)
    VorpCore = core
end)


-- =========================
-- Billing + Society Ledger
-- =========================

-- Override this if your society_ledger job key differs from the VORP job name
-- Example: return "doctor" even if Character.job is "medic"
local function _getSocietyJobName(vorpJob)
    if Config and Config.SocietyJobNameOverride and Config.SocietyJobNameOverride ~= "" then
        return Config.SocietyJobNameOverride
    end
    return vorpJob
end

local function _oxmysqlExecute(query, params, cb)
    -- oxmysql
    if exports and exports.oxmysql and exports.oxmysql.execute then
        return exports.oxmysql:execute(query, params or {}, cb)
    end
    -- ghmattimysql
    if exports and exports.ghmattimysql and exports.ghmattimysql.execute then
        return exports.ghmattimysql:execute(query, params or {}, cb)
    end
    -- mysql-async (global MySQL)
    if MySQL and MySQL.Async and MySQL.Async.execute then
        return MySQL.Async.execute(query, params or {}, cb)
    end
    print("[legacy_medic] WARNING: No MySQL wrapper found (oxmysql/ghmattimysql/mysql-async). society_ledger will NOT be updated.")
    if cb then cb(0) end
end

local function AddToSocietyLedger(jobName, amount)
    if not jobName or jobName == "" then
        print("[legacy_medic] WARNING: society jobName is empty; cannot deposit.")
        return
    end
    if not amount or amount <= 0 then return end

    -- Update; if no row changed, insert
    _oxmysqlExecute("UPDATE society_ledger SET ledger = ledger + ? WHERE job = ?", { amount, jobName }, function(changed)
        -- oxmysql returns changed row count (number); mysql-async too; ghmatt sometimes returns affectedRows
        local affected = changed
        if type(changed) == "table" and changed.affectedRows then affected = changed.affectedRows end
        if not affected or affected == 0 then
            _oxmysqlExecute("INSERT INTO society_ledger (job, ledger) VALUES (?, ?)", { jobName, amount })
        end
    end)
end

local function ChargePatientAndDeposit(doctorSrc, patientSrc, amount, societyJob)
    if not amount or amount <= 0 then return end

    local patientUser = VorpCore.getUser(patientSrc)
    if not patientUser then return end
    local patientChar = patientUser.getUsedCharacter
    if not patientChar then return end

    -- Money checks / negative handling
    local canGoNegative = (Config and Config.gonegative) or false
    local patientMoney = patientChar.money or 0

    if (not canGoNegative) and patientMoney < amount then
        -- Optional: notify doctor/patient
        if doctorSrc then
            VorpCore.NotifyRightTip(doctorSrc, _U('notenough') .. tostring(amount), 4000)
        end
        return
    end

    -- Remove from patient
    patientChar.removeCurrency(0, amount)

    -- Deposit into society ledger
    AddToSocietyLedger(societyJob, amount)
end



-- Returns true if any doctor job is currently on duty (syn_society) or connected (fallback)
local function HasAnyDoctorOnDuty()
    -- Prefer syn_society duty tracking when enabled
    if Config and Config.synsociety and exports and exports["syn_society"] and exports["syn_society"].GetPlayersOnDuty then
        for _, job in ipairs(MedicJobs) do
            local ok, jobOnDuty = pcall(function()
                return exports["syn_society"]:GetPlayersOnDuty(job)
            end)
            if ok and jobOnDuty and #jobOnDuty > 0 then
                return true
            end
        end
        return false
    end

    -- Fallback: count online doctors by job
    local docs = 0
    for _, pid in ipairs(GetPlayers()) do
        local User = VorpCore.getUser(tonumber(pid))
        if User then
            local used = User.getUsedCharacter
            if used and CheckTable(MedicJobs, used.job) then
                docs = docs + 1
            end
        end
    end
    return docs > 0
end

local stafftable = {}

RegisterServerEvent('legacy_medic:checkjob', function()
    --print('working')
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local job = Character.job
    TriggerClientEvent('legacy_medic:sendjob', _source, job)
end)

---@param table table
---@param job string
---@return boolean
--[[
local CheckPlayer = function(table, job)

    for _, jobholder in pairs(table) do
        local onduty = exports["syn_society"]:IsPlayerOnDuty(jobholder, job)
        print(onduty)
        return onduty
    end

    return false
end
]]

RegisterServerEvent("legacy_medicalertjobs", function()
    local _source = source
    local docs = 0
    local isOnDuty = false
        
    if Config.synsociety then
        for _, job in ipairs(MedicJobs) do
            local jobOnDuty = exports["syn_society"]:GetPlayersOnDuty(job)
            if #jobOnDuty ~= 0 then
                isOnDuty = true
            end
        end
        end
        
    if isOnDuty then
        VorpCore.NotifyRightTip(_source, _U("doctoractive"), 20000)
    elseif isOnDuty == false then
        TriggerClientEvent('legacy_medic:finddoc', _source)
    else
        for z, m in ipairs(GetPlayers()) do
            local User = VorpCore.getUser(m)
            local used = User.getUsedCharacter
            if CheckTable(MedicJobs, used.job) then
                docs = docs + 1
            end
        end
        if docs < 1 then
            TriggerClientEvent('legacy_medic:finddoc', _source)
        end
    end
end)



RegisterServerEvent("legacy_medic:sendPlayers", function(source)
    local _source = source
    local user = VorpCore.getUser(_source).getUsedCharacter
    local job = user.job -- player job

    if CheckTable(MedicJobs, job) then
        stafftable[#stafftable + 1] = _source -- id
    end
end)

AddEventHandler('playerDropped', function()
    local _source = source
    for index, value in pairs(stafftable) do
        if value == _source then
            stafftable[index] = nil
        end
    end
end)

RegisterServerEvent('legacy_medic:takeitem', function(item, number)
    local _source = source
    local itemname = item
    local amount = number
    local canCarry2 = exports.vorp_inventory:canCarryItems(_source,amount)
    if canCarry2 == false then
        TriggerClientEvent("vorp:TipRight", _source, _U('cantcarry') .. amount .. " " .. itemname, 4000)
    elseif canCarry2 then

        local canCarry = exports.vorp_inventory:canCarryItem(_source,itemname,amount)
        if canCarry then
            VORPInv.addItem(_source, itemname, amount)
            VorpCore.NotifyRightTip(_source, _U('Received') .. amount .. _U('Of') .. itemname, 4000)
        else
            TriggerClientEvent("vorp:TipRight", _source, _U('cantcarry') .. amount .. " " .. itemname, 4000)    
        end
    end
end)

RegisterServerEvent("legacy_medic:reviveplayer")
AddEventHandler("legacy_medic:reviveplayer", function()

    local _source = source

    -- NPC doctor (sendhelp) only works if NO player doctor is on duty
    if HasAnyDoctorOnDuty() then
        VorpCore.NotifyRightTip(_source, _U('doctoractive'), 6000)
        return
    end
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local money = Character.money
    if not Config.gonegative then
        if money >= Config.doctors.amount then
            Character.removeCurrency(0, Config.doctors.amount) -- Remove money 1000 | 0 = money, 1 = gold, 2 = rol
            VorpCore.NotifyRightTip(_source, _U('revived') .. Config.doctors.amount, 4000)
            TriggerClientEvent('legacy_medic:revive', _source)
        else
            VorpCore.NotifyRightTip(_source, _U('notenough') .. Config.doctors.amount, 4000)
        end
    elseif Config.gonegative then
        Character.removeCurrency(0, Config.doctors.amount) -- Remove money 1000 | 0 = money, 1 = gold, 2 = rol
        VorpCore.NotifyRightTip(_source, _U('revived') .. Config.doctors.amount, 4000)
        TriggerClientEvent('legacy_medic:revive', _source)
    else
        VorpCore.NotifyRightTip(_source, _U('notenough') .. Config.doctors.amount, 4000)
    end
end)

RegisterServerEvent('legacy_medic:reviveclosestplayer')
AddEventHandler('legacy_medic:reviveclosestplayer', function(closestPlayer)
    local _source = source
    local Character = VorpCore.getUser(_source).getUsedCharacter
    local target = VorpCore.getUser(closestPlayer).getUsedCharacter
    local playname2 = target.firstname .. ' ' .. target.lastname
    local count = VORPInv.getItemCount(_source, Config.Revive)
    local playername = Character.firstname .. ' ' .. Character.lastname

    if count > 0 then
        VORPInv.subItem(_source, Config.Revive, 1)
        TriggerClientEvent('legacy_medic:revive', closestPlayer)
        -- Charge patient + deposit to society ledger
        local societyJob = _getSocietyJobName(Character.job)
        ChargePatientAndDeposit(_source, closestPlayer, (Config.TreatmentFee or 30), societyJob)
        if Config.usewebhook then
            VorpCore.AddWebhook(Config.WebhookTitle, Config.Webhook,
                _U('Player_Syringe') .. playername .. _U('Used_Syringe') .. playname2)
        else
        end
    else
        VorpCore.NotifyRightTip(_source, _U('Missing') .. Config.Revive, 4000)
    end
end)

RegisterServerEvent('legacy_medic:healplayer')
AddEventHandler('legacy_medic:healplayer', function(closestPlayer, closestPlayerhealth)
    local _source = source
    local count = VORPInv.getItemCount(_source, Config.Bandage)
    
    if closestPlayerhealth < Config.helthcheck then -- Check if player's health is under 300
        if count > 0 then
            VORPInv.subItem(_source, Config.Bandage, 1)
            TriggerClientEvent('vorp:heal', closestPlayer)
            -- Charge patient + deposit to society ledger
            local Character = VorpCore.getUser(_source).getUsedCharacter
            local societyJob = _getSocietyJobName(Character.job)
            ChargePatientAndDeposit(_source, closestPlayer, (Config.TreatmentFee or 30), societyJob)
        else
            VorpCore.NotifyRightTip(_source, _U('Missing') .. Config.Bandage, 4000)
        end
    else

        VorpCore.NotifyRightTip(_source,_U('cantheal') , 4000)
    end
end)

RegisterServerEvent('legacy_medic:healself')
AddEventHandler('legacy_medic:healself', function()
    local _source = source
    local count = VORPInv.getItemCount(_source, Config.Bandage)
    
    if count > 0 then
        VORPInv.subItem(_source, Config.Bandage, 1)
        TriggerClientEvent('vorp:heal', _source)
    else
        VorpCore.NotifyRightTip(_source, _U('Missing') .. Config.Bandage, 4000)
    end
end)

VORPInv.RegisterUsableItem(Config.Revive, function(data)
    local _source = data.source -- the player that is using the item
    local user = VorpCore.getUser(_source).getUsedCharacter -- get user 
    local job = user.job
    if CheckTable(MedicJobs, job) then
        TriggerClientEvent('legacy_medic:getclosestplayerrevive', _source)
    VorpCore.NotifyRightTip(data.source,_U('Youused').. Config.Revive, 4000)
    else
        VorpCore.NotifyRightTip(_source,_U('you_do_not_have_job'), 4000)

    end

end)

VORPInv.RegisterUsableItem(Config.Bandage, function(data)
    TriggerClientEvent('legacy_medic:getclosestplayerbandage', data.source)
    VorpCore.NotifyRightTip(data.source,_U('Youused').. Config.Bandage, 4000)
end)

function CheckTable(table, element)
    for k, v in pairs(table) do
        if v == element then
            return true
        end
    end
    return false
end
