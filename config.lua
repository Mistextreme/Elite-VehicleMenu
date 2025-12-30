Config = {}
Config.Debug = false -- Debug mode
Config.Framework = "auto" -- auto = auto detection / esx / qbcore

Config.Locales = "en" -- en/fr/

Config.Group = {"fondateur", "admin", "mod"}
Config.Command = "vehmenu" -- command for open menu or false
Config.Keys = "F2" -- keys for open menu or false

Config.CloseMenu = true -- Close menu when you spawn a vehicle
Config.DeleteLastVehicle = true -- Delete last vehicle spawn by player with menu

-- if false, the script use image in web/img/*.png, otherwise put github link (like "https://raw.githubusercontent.com/user/repo/branch/vehicles")
-- u can use: "https://raw.githubusercontent.com/MaDHouSe79/mh-vehicleimages/main/images/"
Config.ImgLink = false


Config.OnlyCustomCategory = false -- Show only custom category on config
--- Add custom category, and custom vehicle in category | IF false, its disable
Config.CustomCategory = {

    -- ["exemple"] = {
    --     label = "EXEMPLE",
    --     vehicle = {
    --         {spawnName = "sultan", label = "My Custom Sultan"}, -- SpawnName its for model and image, and label for text in menu
    --     }
    -- },

    ["police"] = {
        label = "Police",
        vehicle = {
            {spawnName = "police", label = "Police Car"},
            {spawnName = "police2", label = "Police Cruiser"},
            {spawnName = "policeb", label = "Police Bike"}
        }
    },
    ["ambulance"] = {
        label = "Ambulance",
        vehicle = {
            {spawnName = "ambulance", label = "Ambulance"},
            {spawnName = "fbi2", label = "Medical SUV"},
            {spawnName = "firetruk", label = "Fire Truck"}
        }
    },
}

--- utils functions
---@param ... any
Debug = function(...)
    if Config.Debug then
        print('[^5DEBUG^0]',...)
    end
end
---@param ... any
Error = function(...)
    print('[^1ERROR^0]^1',...,'^0')
end
---@param ... any
Warn = function(...)
    print('[^3WARN^0]', ...,'^0')
end
---@param ... any
Info = function(...)
    print('[^2INFO^0]', ...,'^0')
end

DetectFramework = function()
    if Config.Framework ~= "auto" then
        return
    end

    if GetResourceState("es_extended") == "started" then
        Config.Framework = "esx"
        Debug("Framework: ESX")
    elseif GetResourceState("qb-core") == "started" then
        Config.Framework = "qbcore"
        Debug("Framework: QBCore")
    else
        Config.Framework = nil
        Error("No frameworks detected !")
    end
end

DetectFramework()