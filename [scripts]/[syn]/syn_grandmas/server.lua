local VorpCore = exports.vorp_core:GetCore()


RegisterCommand("rev", function(source)
    local _source = source
    local result = VorpCore.Callback.TriggerAwait("syn_grandma:checkReviveClient", _source)

    if type(result) == "table" then
        local isDead = result.isDead
        local nearDoctor = result.nearDoctor
        local location = result.location  

        if isDead == 1 and nearDoctor and location then
            local doctorConfig = Config.npcdoctor[location]

            if doctorConfig then
                local Character = VorpCore.getUser(_source).getUsedCharacter
                if Character then
                    local price = doctorConfig.price
                    local gold = doctorConfig.gold
                    local playercash = Character.money
                    local gold2 = Character.gold

                    if gold then
                        if gold2 >= price then
                            Character.removeCurrency(1, price)
                            TriggerClientEvent('vorp_core:Client:OnPlayerRevive', _source)
                            VorpCore.NotifyRightTip(_source, Config.Language.healed .. price .. Config.Language.gold, 5000)
                        else
                            VorpCore.NotifyRightTip(_source, Config.Language.nocash, 5000)
                        end
                    else
                        if playercash >= price then
                            Character.removeCurrency(0, price)
                            TriggerClientEvent('vorp_core:Client:OnPlayerRevive', _source)
                            VorpCore.NotifyRightTip(_source, Config.Language.healed .. price .. Config.Language.cash, 5000)
                        else
                            VorpCore.NotifyRightTip(_source, Config.Language.nocash, 5000)
                        end
                    end
                else
                    print("Failed to retrieve character for player:", _source)
                end
            else
                VorpCore.NotifyRightTip(_source, "Error: Unable to locate doctor configuration.", 5000)
            end
        else
            VorpCore.NotifyRightTip(_source, Config.Language.notdead, 4000)
        end
    else
        VorpCore.NotifyRightTip(_source, Config.Language.Error, 5000)
    end
end, false)
