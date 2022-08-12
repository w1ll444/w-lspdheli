local QBCore = exports['qb-core']:GetCoreObject()

-- Events --

RegisterNetEvent('qb-helirental:server:swapVehicle', function(data)
    local src = source
    TriggerClientEvent('qb-helirental:client:swapVehicle', -1, data)
    Wait(1500)
    TriggerClientEvent('qb-helirental:client:openHeliMenuRentalConfirmationMenu', src, data)
end)

-- Callbacks --

QBCore.Functions.CreateCallback('qb-helirental:server:CanRentHeli', function(source, cb, rentalCost)
    local player = QBCore.Functions.GetPlayer(source)
    if player.Functions.GetMoney('cash') >= rentalCost then
        player.Functions.RemoveMoney('cash', rentalCost, 'Heli rental')
        cb(true)
    elseif player.Functions.GetMoney('bank') >= rentalCost then
        player.Functions.RemoveMoney('bank', rentalCost, 'Heli rental')
        cb(true)
    else
        cb(false)
    end
end)