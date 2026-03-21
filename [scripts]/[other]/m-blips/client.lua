local initBlips = {}
local VORPcore = exports.vorp_core:GetCore()
local lastJob = nil

local function createBlip(data)
    local blipId = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, data.x, data.y, data.z)
    SetBlipSprite(blipId, data.sprite, 1)
    if data.color then
        Citizen.InvokeNative(0x662D364ABF16DE2F, blipId, GetHashKey(data.color))
    else
        Citizen.InvokeNative(0x662D364ABF16DE2F, blipId, GetHashKey(Config.colors.WHITE))
    end
    local varString = CreateVarString(10, 'LITERAL_STRING', data.name)
    Citizen.InvokeNative(0x9CB1A1623062F402, blipId, varString)
    return blipId
end

local function clearBlips()
    for _, blip in pairs(initBlips) do
        RemoveBlip(blip)
    end
    initBlips = {}
end

local function initializeBlips(hasRestrictedJob, job)
    clearBlips()
    lastJob = job
    for categoryName, category in pairs(Config.BlipCategories) do
        local shouldShow = true
        if #category.restrictedJobs > 0 then
            for _, restrictedJob in ipairs(category.restrictedJobs) do
                if hasRestrictedJob and job == restrictedJob then
                    shouldShow = false
                    break
                end
            end
        end
        if shouldShow then
            for _, data in ipairs(category.blips) do
                local blipId = createBlip(data)
                table.insert(initBlips, blipId)
            end
        else
        end
    end
end

RegisterNetEvent("mapBlips:jobCheckResult")
AddEventHandler("mapBlips:jobCheckResult", function(hasRestrictedJob, job)
    initializeBlips(hasRestrictedJob, job)
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function()
    local restrictedJobs = {}
    for _, category in pairs(Config.BlipCategories) do
        for _, job in ipairs(category.restrictedJobs) do
            if not table.contains(restrictedJobs, job) then
                table.insert(restrictedJobs, job)
            end
        end
    end
    TriggerServerEvent("mapBlips:checkJob", restrictedJobs)
end)

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        Citizen.CreateThread(function()
            Citizen.Wait(math.random(1000, 5000))
            local restrictedJobs = {}
            for _, category in pairs(Config.BlipCategories) do
                for _, job in ipairs(category.restrictedJobs) do
                    if not table.contains(restrictedJobs, job) then
                        table.insert(restrictedJobs, job)
                    end
                end
            end
            TriggerServerEvent("mapBlips:checkJob", restrictedJobs)
        end)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(120000)
        if lastJob ~= nil then
            local restrictedJobs = {}
            for _, category in pairs(Config.BlipCategories) do
                for _, job in ipairs(category.restrictedJobs) do
                    if not table.contains(restrictedJobs, job) then
                        table.insert(restrictedJobs, job)
                    end
                end
            end
            TriggerServerEvent("mapBlips:checkJobUpdate", restrictedJobs, lastJob)
        end
    end
end)

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end


AddEventHandler("onResourceStop", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        clearBlips()
    end
end)