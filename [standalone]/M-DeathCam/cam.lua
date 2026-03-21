local Dead = false
local deadcam = nil
local angleY = 0.0
local angleZ = 0.0
local currentCamPos = nil
local lastPlayerPos = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if NetworkIsPlayerActive(PlayerId()) and not IsThreadActive("DeathCamInit") then
            DeathCam2()
            DeathCam1()
            break
        end
    end
end)

function DeathCam1()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if deadcam and Dead then
                ProcessCamControls()
            end
        end
    end)
end

function DeathCam2()
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(500)
            local ped = PlayerPedId()
            local isDead = IsPedDeadOrDying(ped)
            if not Dead and isDead then
                Dead = true
                StartDeathCam()
            elseif Dead and not isDead then
                Dead = false
                EndDeathCam()
            end
            if Dead and deadcam then
                SetCamActive(deadcam, true)
                RenderScriptCams(true, false, 0, true, false)
            end
        end
    end)
end

function StartDeathCam()
    ClearFocus()
    local coords = GetEntityCoords(PlayerPedId())
    deadcam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, GetGameplayCamFov(), false, 0)
    if deadcam then
        SetCamActive(deadcam, true)
        RenderScriptCams(true, false, 0, true, false)
        angleY = 0.0
        angleZ = 0.0
        currentCamPos = coords
        lastPlayerPos = coords -- Initialize last position
    end
end

function EndDeathCam()
    ClearFocus()
    if deadcam then
        RenderScriptCams(false, false, 0, true, false)
        DestroyCam(deadcam, false)
        deadcam = nil
        currentCamPos = nil
        lastPlayerPos = nil
    end
end

function ProcessCamControls()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    
    Citizen.InvokeNative(0x05AB44D906738426)
    DisableControlAction(0, 0x1D073A89, true)
    
    local mouseX = GetControlNormal(0, 0xA987235F) * 8.0
    local mouseY = GetControlNormal(0, 0xD2047988) * 8.0
    
    -- Manual control if mouse is used
    if math.abs(mouseX) > 0.05 or math.abs(mouseY) > 0.05 then
        angleZ = angleZ - mouseX
        angleY = math.max(-89.0, math.min(89.0, angleY + mouseY))
    else
        -- Auto-follow if player moves
        if lastPlayerPos and Vdist(lastPlayerPos.x, lastPlayerPos.y, lastPlayerPos.z, playerCoords.x, playerCoords.y, playerCoords.z) > 0.1 then
            local dx = playerCoords.x - currentCamPos.x
            local dy = playerCoords.y - currentCamPos.y
            local distance = math.sqrt(dx * dx + dy * dy)
            if distance > 0 then
                local targetAngleZ = math.atan(dy, dx) * 180 / math.pi - 90 -- Smoothly adjust angle to follow
                angleZ = angleZ + (targetAngleZ - angleZ) * 0.05 -- Smooth transition
            end
        end
    end
    
    local newPos = ProcessNewPosition(playerCoords, mouseX, mouseY)
    
    -- Smoothing
    if not currentCamPos then
        currentCamPos = newPos
    else
        currentCamPos = {
            x = currentCamPos.x + (newPos.x - currentCamPos.x) * 0.1,
            y = currentCamPos.y + (newPos.y - currentCamPos.y) * 0.1,
            z = currentCamPos.z + (newPos.z - currentCamPos.z) * 0.1
        }
    end
    
    SetCamCoord(deadcam, currentCamPos.x, currentCamPos.y, currentCamPos.z)
    PointCamAtCoord(deadcam, playerCoords.x, playerCoords.y, playerCoords.z)
    
    lastPlayerPos = playerCoords -- Update last position
end

function ProcessNewPosition(pCoords, mouseX, mouseY)
    local maxRadius = 3.5
    local cosZ, sinZ = Cos(angleZ), Sin(angleZ)
    local cosY, sinY = Cos(angleY), Sin(angleY)
    
    local offset = {
        x = (cosZ * cosY) * maxRadius,
        y = (sinZ * cosY) * maxRadius,
        z = sinY * maxRadius
    }
    
    local pos = {
        x = pCoords.x + offset.x,
        y = pCoords.y + offset.y,
        z = pCoords.z + offset.z
    }
    
    if math.abs(mouseX) > 0.15 or math.abs(mouseY) > 0.15 then
        local rayHandle = StartShapeTestRay(pCoords.x, pCoords.y, pCoords.z + 0.5, 
            pos.x, pos.y, pos.z, -1, PlayerPedId(), 0)
        local _, hitBool, hitCoords = GetShapeTestResult(rayHandle)
        if hitBool then
            local dist = Vdist(pCoords.x, pCoords.y, pCoords.z, hitCoords.x, hitCoords.y, hitCoords.z)
            if dist < maxRadius then
                return { x = hitCoords.x, y = hitCoords.y, z = hitCoords.z }
            end
        end
    end
    
    return pos
end