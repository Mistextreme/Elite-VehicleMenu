local QBCore = Config.Framework == "qbcore" and exports['qb-core']:GetCoreObject()
if not QBCore then return end

framework = {}

Debug("QbCore file loaded successfully!")

function framework.GetGroup(src)
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return nil end

    return Player.PlayerData.group
end

local commandPermission = type(Config.Group) == "string" and Config.Group or nil

if Config.Command and type(Config.Command) == "string" then
    QBCore.Commands.Add(Config.Command, 'Open Vehicle Menu (staff)', {}, false, function(source)
        TriggerClientEvent('Elite-VehicleMenu:OpenMenu', source)
    end, commandPermission)
end