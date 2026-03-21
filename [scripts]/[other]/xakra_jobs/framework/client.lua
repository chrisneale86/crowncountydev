local VORPcore = exports.vorp_core:GetCore()

TriggerEvent("vorp_menu:getData", function(call)
    MenuData = call
end)

function NotifySimpleTop(title, subtitle, time)
    VORPcore.NotifySimpleTop(title, subtitle, time)
end

function NotifyLeft(title, subtitle, dict, icon, time, color)
    VORPcore.NotifyLeft(title, subtitle, dict, icon , time, color)
end

function NotifyFail(title, subtitle, time)
    VORPcore.NotifyFail(title, subtitle, time)
end

function NotifyObjective(title, time)
    VORPcore.NotifyObjective(title, time)
end

function Notify(text)
    ExecuteCommand(text)
    -- TriggerServerEvent('ExampleNotify', text)
end

InventoryImg = 'vorp_inventory/html/img/items/'

function CreateDeliveryCart(entity, model, coords)
    -- TriggerServerEvent('Example', text)
end