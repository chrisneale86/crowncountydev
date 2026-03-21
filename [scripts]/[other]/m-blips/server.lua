local VORPcore = exports.vorp_core:GetCore()

local function checkJob(source, restrictedJobs, cb)
    local User = VORPcore.getUser(source)
    if not User then
        Citizen.Wait(1000)
        User = VORPcore.getUser(source)
        if not User then
            cb(false, "none")
            return
        end
    end
    local Character = User.getUsedCharacter
    if not Character then
        Citizen.Wait(1000)
        Character = User.getUsedCharacter
        if not Character then
            cb(false, "none")
            return
        end
    end
    local jobData = Character.job or "none"
    local hasRestrictedJob = false
    for _, job in ipairs(restrictedJobs) do
        if jobData == job then
            hasRestrictedJob = true
            break
        end
    end
    cb(hasRestrictedJob, jobData)
end

RegisterServerEvent("mapBlips:checkJob")
AddEventHandler("mapBlips:checkJob", function(restrictedJobs)
    local source = source
    checkJob(source, restrictedJobs, function(hasRestrictedJob, job)
        TriggerClientEvent("mapBlips:jobCheckResult", source, hasRestrictedJob, job)
    end)
end)

RegisterServerEvent("mapBlips:checkJobUpdate")
AddEventHandler("mapBlips:checkJobUpdate", function(restrictedJobs, lastKnownJob)
    local source = source
    checkJob(source, restrictedJobs, function(hasRestrictedJob, currentJob)
        if currentJob ~= lastKnownJob then
            TriggerClientEvent("mapBlips:jobCheckResult", source, hasRestrictedJob, currentJob)
        else
        end
    end)
end)

AddEventHandler("onResourceStart", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        print("Server: MapBlips resource fully loaded")
    end
end)