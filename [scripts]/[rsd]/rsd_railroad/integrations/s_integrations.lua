--GHOST TRAIN (server cmd)
-- RegisterCommand("YourCommandName", function(source, args)
-- 	if args[1] then -- 0, 1 for direction in rail
-- 		TriggerClientEvent("rsd_railroad:GhostTrain", source, tonumber(args[1])) --to spawn and control
-- 	end
-- end)

-- RegisterCommand("YourCommandName", function(source, args) 
-- 	TriggerClientEvent("rsd_railroad:GhostTrain", source) -- to remove ghost train
-- end)

-- --DELETE TRAIN ADMIN (server cmd) // Almost useless since the addition of the automatic pound
-- RegisterCommand("YourCommandName", function(source, args) 
-- 	TriggerClientEvent("rsd_railroad:ADMIN:DeleteTrain", source)
-- end)

function AddMoneyToCompany(jobCompany, rewardCompany)
    --print(jobCompany, rewardCompany)
    --PUT YOUR TRIGGER OF YOUR SCRIPT


    --EXEMPLE FOR SYN_SOCIETY 
    local DB_U_query = 'UPDATE society_ledger SET ledger=ledger+@ledger WHERE job=@job'
    local DB_update = {
        ledger = rewardCompany,
        --where
        job = jobCompany,
    }
    MySQL.update(DB_U_query, DB_update)
end