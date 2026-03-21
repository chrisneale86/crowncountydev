RegisterNetEvent("fx-graverobbery:server:GiveRewards", function()
    local src = source
    local totalCash = 0
    local wonItems = {}      
    local givenItemsText = {} 

    if Config.Rewards.MoneyChance and math.random(1, 100) <= Config.Rewards.MoneyChance then
        local cash = Config.Rewards.Cash
        FXAddMoney(src, cash, "cash")
        totalCash = cash
    end

    local RewardChange = math.random(1, 100)
    for _, reward in pairs(Config.Rewards.Items) do
        if RewardChange <= reward.chance then
            table.insert(wonItems, reward)
        end
    end

    table.sort(wonItems, function(a, b)
        return (a.chance or 0) < (b.chance or 0)
    end)

    local maxCount = tonumber(Config.Rewards.MaxRewardItemCount) or 2
    if maxCount > 0 and #wonItems > maxCount then
        local trimmed = {}
        for i = 1, maxCount do
            trimmed[i] = wonItems[i]
        end
        wonItems = trimmed
    end

    for _, reward in ipairs(wonItems) do
        if FXCanCarry(src, reward.item, reward.count) then
            FXAddItem(src, reward.item, reward.count)
            table.insert(givenItemsText, reward.count .. "x " .. reward.itemLabel)
        else
            Notify({
                source = src,
                text = Locale("cantcarry", {item=reward.itemLabel, count=reward.count}),
                time = 2000,
                type = "info",
                dict = "inventory_items",
                icon = "generic_horse_equip_saddlebag",
                color = "COLOR_PURE_WHITE"
            })
        end
    end

    local itemsText = #givenItemsText > 0 and table.concat(givenItemsText, ", ") or Locale("no_items_found")
    local message = Locale("reward_item", {cash = totalCash, item = itemsText})
    local logmsg = Locale("robbery_log", {items = itemsText, cash = totalCash})
    sendWebhook(src, logmsg, 16711680)

    Notify({
        source = src,
        text = message,
        time = 5000,
        type = "info",
        dict = "menu_textures",
        icon = "log_gang_bag",
        color = "COLOR_PURE_WHITE"
    })
end)