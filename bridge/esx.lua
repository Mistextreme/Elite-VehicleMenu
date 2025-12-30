local ESX = Config.Framework == "esx" and GetResourceState('es_extended'):find('start') and exports['es_extended']:getSharedObject() or nil
if not ESX then return end

framework = {}

Debug("ESX file loaded successfully!")

function framework.GetGroup(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if not xPlayer then return nil end
    return xPlayer.getGroup()
end

if Config.Command and type(Config.Command) == "string" then
    ESX.RegisterCommand(Config.Command, Config.Group, function(xPlayer, args, showError)
        if not xPlayer then
            return showError('[^1ERROR^7] The xPlayer value is nil')
        end
        local playerGroup = xPlayer.getGroup()
        local hasPermission = false
        for _, perm in ipairs(Config.Group) do
            if playerGroup == perm then
                hasPermission = true
                break
            end
        end

        if not hasPermission then
            return showError('[^1ERROR^7] You do not have permission to use this command')
        end
        TriggerClientEvent('Elite-VehicleMenu:OpenMenu', xPlayer.source)
    end, {help = 'Open Vehicle Staff Menu', params = {}})
end