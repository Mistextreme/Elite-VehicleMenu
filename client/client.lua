local favoriteVehicles = {}
local locales = Locales[Config.Locales]
local lastSpawnedVehicle = nil

local plateStyles = {
  plate01 = 0,
  plate02 = 1,
  plate03 = 2,
  plate04 = 3,
  plate05 = 4,
  yankton = 5
}

-- Generate storage key for favorite vehicle
local function getFavoriteKey(vehicleModel)
  return string.format("veh_fav_%s", vehicleModel or "")
end

-- Load all favorite vehicles from storage
local function loadFavorites()
  favoriteVehicles = {}
  local allModels = GetAllVehicleModels()
  
  if not allModels then
    return
  end
  
  for i = 1, #allModels do
    local model = allModels[i]
    local key = getFavoriteKey(model)
    local stored = GetResourceKvpString(key)
    
    if stored ~= nil then
      favoriteVehicles[model] = (stored == "1")
    end
  end
end

-- Save favorite status for a vehicle
local function setFavorite(vehicleModel, isFavorite)
  favoriteVehicles[vehicleModel] = isFavorite
  
  local key = getFavoriteKey(vehicleModel)
  local value = isFavorite and "1" or "0"
  SetResourceKvp(key, value)
end

-- Get display name for vehicle model
local function getVehicleDisplayName(modelHash)
  local modelName = GetDisplayNameFromVehicleModel(modelHash)
  local labelText = GetLabelText(modelName)
  
  if labelText ~= "NULL" and labelText ~= modelName then
    return labelText
  end
  
  return modelName
end

-- Get vehicle class name
local function getVehicleClassName(modelHash)
  local classId = GetVehicleClassFromName(modelHash)
  local labelKey = string.format("VEH_CLASS_%d", classId)
  local labelText = GetLabelText(labelKey)
  
  if labelText == nil or labelText == "NULL" or labelText == labelKey then
    return tostring(classId)
  end
  
  return labelText
end

-- Get all vehicles organized by category
local function getAllVehiclesByCategory()
  local allModels = GetAllVehicleModels()
  local vehicles = {}
  local categoryMap = {}
  local categories = {}
  
  if not allModels then
    return categories, vehicles
  end
  
  for i = 1, #allModels do
    local model = allModels[i]
    local modelHash = GetHashKey(model)
    local displayName = getVehicleDisplayName(modelHash)
    local className = getVehicleClassName(modelHash)
    local imagePath = string.format("img/%s.png", string.lower(model))
    
    local vehicleData = {
      label = displayName,
      name = model,
      category = className,
      image = imagePath,
      favorite = (favoriteVehicles[model] == true)
    }
    
    vehicles[#vehicles + 1] = vehicleData
    
    if className and not categoryMap[className] then
      categoryMap[className] = true
      categories[#categories + 1] = className
    end
  end
  
  table.sort(categories)
  table.sort(vehicles, function(a, b)
    local labelA = a.label or a.name
    local labelB = b.label or b.name
    return labelA < labelB
  end)
  
  return categories, vehicles
end

-- Get vehicles with custom categories
local function getVehiclesWithCustomCategories()
  if not Config.CustomCategory or type(Config.CustomCategory) ~= "table" then
    return getAllVehiclesByCategory()
  end
  
  -- Only custom categories mode
  if Config.OnlyCustomCategory then
    local categories = {}
    local vehicles = {}
    
    for _, categoryData in pairs(Config.CustomCategory) do
      categories[#categories + 1] = categoryData.label
      
      for _, vehicleData in ipairs(categoryData.vehicle) do
        local imagePath = string.format("img/%s.png", string.lower(vehicleData.spawnName))
        
        vehicles[#vehicles + 1] = {
          label = vehicleData.label,
          name = vehicleData.spawnName,
          category = categoryData.label,
          image = imagePath,
          favorite = (favoriteVehicles[vehicleData.spawnName] == true)
        }
      end
    end
    
    table.sort(categories)
    table.sort(vehicles, function(a, b)
      return a.label < b.label
    end)
    
    return categories, vehicles
  end
  
  -- Merge custom with default categories
  local categories, vehicles = getAllVehiclesByCategory()
  
  for _, categoryData in pairs(Config.CustomCategory) do
    local categoryExists = false
    
    for _, existingCategory in ipairs(categories) do
      if existingCategory == categoryData.label then
        categoryExists = true
        break
      end
    end
    
    if not categoryExists then
      categories[#categories + 1] = categoryData.label
    end
    
    for _, vehicleData in ipairs(categoryData.vehicle) do
      local imagePath = string.format("img/%s.png", string.lower(vehicleData.spawnName))
      
      vehicles[#vehicles + 1] = {
        label = vehicleData.label,
        name = vehicleData.spawnName,
        category = categoryData.label,
        image = imagePath,
        favorite = (favoriteVehicles[vehicleData.spawnName] == true)
      }
    end
  end
  
  table.sort(categories)
  table.sort(vehicles, function(a, b)
    return a.label < b.label
  end)
  
  return categories, vehicles
end

-- Open the vehicle menu
local function openVehicleMenu()
  loadFavorites()
  
  local categories, vehicles = getVehiclesWithCustomCategories()
  
  SetNuiFocus(true, true)
  SendNUIMessage({
    action = "showMenu",
    categories = categories,
    vehicles = vehicles,
    locales = locales,
    imgLink = Config.ImgLink
  })
end

RegisterNetEvent("Elite-VehicleMenu:OpenMenu", function()
  openVehicleMenu()
end)

-- Close the vehicle menu
local function closeVehicleMenu()
  SetNuiFocus(false, false)
  SendNUIMessage({
    action = "hideMenu"
  })
end

-- Register keybind if configured
if Config.Keys and type(Config.Keys) == "string" then
  RegisterCommand("elitevehiclemenu", function()
    TriggerServerEvent("Elite-VehicleMenu:checkPerms")
  end)
  
  RegisterKeyMapping("elitevehiclemenu", "Open Vehicle Menu", "keyboard", Config.Keys)
end

-- NUI Callback: Toggle favorite
RegisterNUICallback("toggleFavorite", function(data, cb)
  local vehicleName = data and data.name
  local isFavorite = data and data.favorite
  
  if vehicleName ~= nil and isFavorite ~= nil then
    setFavorite(vehicleName, isFavorite)
  end
  
  cb("ok")
end)

-- Generate random RGB color
local function getRandomColor()
  return {
    r = math.random(0, 255),
    g = math.random(0, 255),
    b = math.random(0, 255)
  }
end

-- Generate random plate text
local function generateRandomPlate(length)
  length = length or 8
  local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  local result = {}
  
  for i = 1, length do
    local index = math.random(1, #chars)
    result[#result + 1] = string.sub(chars, index, index)
  end
  
  return table.concat(result)
end

-- Load vehicle model
local function loadModel(modelHash)
  if not HasModelLoaded(modelHash) then
    RequestModel(modelHash)
    
    local attempts = 0
    while not HasModelLoaded(modelHash) and attempts < 200 do
      Wait(10)
      attempts = attempts + 1
    end
  end
  
  return HasModelLoaded(modelHash)
end

-- Delete last spawned vehicle
local function deleteLastVehicle()
  if lastSpawnedVehicle and DoesEntityExist(lastSpawnedVehicle) then
    local plate = GetVehicleNumberPlateText(lastSpawnedVehicle)
    utils.RemoveCarKeys(lastSpawnedVehicle, plate)
    
    SetEntityAsMissionEntity(lastSpawnedVehicle, true, true)
    DeleteVehicle(lastSpawnedVehicle)
    lastSpawnedVehicle = nil
  end
end

-- Spawn a vehicle
local function spawnVehicle(vehicleName, options)
  options = options or {}
  
  local modelHash = type(vehicleName) == "number" and vehicleName or GetHashKey(vehicleName)
  
  if not IsModelInCdimage(modelHash) or not IsModelAVehicle(modelHash) then
    return nil
  end
  
  if not loadModel(modelHash) then
    return nil
  end
  
  local playerPed = PlayerPedId()
  local pedCoords = GetEntityCoords(playerPed)
  local spawnCoords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 5.0, 0.0)
  local heading = GetEntityHeading(playerPed)
  
  if Config.DeleteLastVehicle then
    deleteLastVehicle()
  end
  
  local vehicle = CreateVehicle(modelHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, heading, true, false)
  
  if not DoesEntityExist(vehicle) then
    return nil
  end
  
  SetVehicleOnGroundProperly(vehicle)
  SetEntityAsMissionEntity(vehicle, true, true)
  SetPedIntoVehicle(playerPed, vehicle, -1)
  SetVehicleEngineOn(vehicle, true, true, false)
  SetVehicleDirtLevel(vehicle, 0.0)
  
  -- Apply custom color if provided
  if options.color then
    local color = options.color
    SetVehicleModKit(vehicle, 0)
    ToggleVehicleMod(vehicle, 20, true)
    SetVehicleCustomPrimaryColour(vehicle, color.r, color.g, color.b)
    SetVehicleCustomSecondaryColour(vehicle, color.r, color.g, color.b)
    SetVehicleTyreSmokeColor(vehicle, color.r, color.g, color.b)
  end
  
  -- Apply custom plate if provided
  if options.plate then
    local plateText = tostring(options.plate.text or "")
    local plateStyle = options.plate.style or "plate01"
    local plateIndex = plateStyles[plateStyle] or 0
    
    SetVehicleNumberPlateText(vehicle, plateText)
    SetVehicleNumberPlateTextIndex(vehicle, plateIndex)
  end
  
  local plate = GetVehicleNumberPlateText(vehicle)
  utils.GiveCarKeys(vehicle, plate)
  
  if Config.CloseMenu then
    closeVehicleMenu()
  end
  
  SetModelAsNoLongerNeeded(modelHash)
  lastSpawnedVehicle = vehicle
  
  return vehicle
end

-- NUI Callback: Spawn vehicle
RegisterNUICallback("spawnVehicle", function(data, cb)
  local vehicleName = data and data.name
  
  if not vehicleName then
    cb("ok")
    return
  end
  
  local options = {}
  
  -- Handle color option
  if data.color and type(data.color) == "table" then
    options.color = {
      r = tonumber(data.color.r) or 255,
      g = tonumber(data.color.g) or 255,
      b = tonumber(data.color.b) or 255
    }
  end
  
  -- Handle plate option
  if data.plate and type(data.plate) == "table" then
    if data.plate.text and #data.plate.text > 0 then
      options.plate = {
        text = tostring(data.plate.text),
        style = tostring(data.plate.style or "plate01")
      }
    end
  end
  
  spawnVehicle(vehicleName, options)
  cb("ok")
end)

-- NUI Callback: Spawn random vehicle
RegisterNUICallback("randomVehicle", function(data, cb)
  local _, vehicles = getAllVehiclesByCategory()
  
  if not vehicles or #vehicles == 0 then
    cb("ok")
    return
  end
  
  local randomVehicle = vehicles[math.random(1, #vehicles)]
  local randomColor = getRandomColor()
  
  local plateStyles = {"plate01", "plate02", "plate03", "plate04", "plate05", "yankton"}
  local randomPlateStyle = plateStyles[math.random(1, #plateStyles)]
  
  local options = {
    color = randomColor,
    plate = {
      text = generateRandomPlate(8),
      style = randomPlateStyle
    }
  }
  
  spawnVehicle(randomVehicle.name, options)
  cb("ok")
end)

-- NUI Callback: Close menu
RegisterNUICallback("close", function(data, cb)
  closeVehicleMenu()
  cb("ok")
end)
