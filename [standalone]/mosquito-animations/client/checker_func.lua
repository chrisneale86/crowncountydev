local function NativeFunctionBooleanCheck(func, ...)
    local result = func(...)
    return result and result ~= 0
end


function CanPlayerStartScenario()
    local ped = PlayerPedId()
    local isPedOnWagon = NativeFunctionBooleanCheck(IsPedSittingInAnyVehicle, ped)
    local isPedCuffed = NativeFunctionBooleanCheck(IsPedCuffed, ped)
    local isPedHogtied = NativeFunctionBooleanCheck(IsPedHogtied, ped)
    local isPedDeadOrDying = NativeFunctionBooleanCheck(IsPedDeadOrDying, ped, true)
    local isPedSwimming = NativeFunctionBooleanCheck(IsPedSwimming, ped)
    local notAllowed = isPedOnWagon or isPedCuffed or isPedHogtied or isPedDeadOrDying or isPedSwimming
    if notAllowed then
        print("You cannot start a scenario.")
        return false
    end
    return true
end

function CanStartSeatInteraction()
    return true
end

function CanPlayerStartAnim()
    local ped = PlayerPedId()
    local isPedHogtied = NativeFunctionBooleanCheck(IsPedHogtied, ped)
    local isPedDeadOrDying = NativeFunctionBooleanCheck(IsPedDeadOrDying, ped, true)
    local isPedSwimming = NativeFunctionBooleanCheck(IsPedSwimming, ped)
    local notAllowed = isPedHogtied or isPedDeadOrDying or isPedSwimming
    if notAllowed then
        print("You cannot start an animation.")
        return false
    end
    return true
end
