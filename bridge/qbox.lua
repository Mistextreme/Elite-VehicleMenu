local Qbox = (Config.Framework == "qbox" and GetResourceState("qbx_core"):find("start")) and exports["qbx_core"] or nil
if not Qbox then return end

framework = {}

Debug("Qbox file loaded successfully!")

function framework.GetGroup(src)
    local group = Qbox:GetPermission(src)
    return group
end

if Config.Command and type(Config.Command) == "string" then
    RegisterCommand(Config.Command, function(source)
        local group = framework.GetGroup(source)
        if not group then return end

        for _, allowed in ipairs(Config.Permissions or {}) do
            if (type(group) == "string" and group == allowed)
            or (type(group) == "table" and group[allowed]) then
                TriggerClientEvent('Elite-VehicleMenu:OpenMenu', source)
                return
            end
        end

    end, false)
end
