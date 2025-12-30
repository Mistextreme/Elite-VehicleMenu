-- Check if player has permission to use vehicle menu
local function hasPermission(source)
  local playerGroup = framework.GetGroup(source)
  
  if not playerGroup then
    return false
  end
  
  for _, allowedGroup in ipairs(Config.Group) do
    if allowedGroup == playerGroup then
      return true
    end
  end
  
  return false
end

-- Event: Check permissions and open menu
RegisterNetEvent("Elite-VehicleMenu:checkPerms", function()
  local source = source
  
  if hasPermission(source) then
    TriggerClientEvent("Elite-VehicleMenu:OpenMenu", source)
  end
end)

-- Detect framework on resource start
AddEventHandler("onResourceStart", function(resourceName)
  if resourceName == GetCurrentResourceName() then
    DetectFramework()
  end
end)

-- Detect framework when framework resource starts
AddEventHandler("onResourceStart", function(resourceName)
  if resourceName == "es_extended" or resourceName == "qb-core" then
    DetectFramework()
  end
end)

-- Version checker
local function checkVersion()
  local function parseVersion(versionString)
    if not versionString then
      return nil
    end
    
    local major, minor, patch = versionString:match("(%d+)%.(%d+)%.?(%d*)")
    
    if not major or not minor then
      return nil
    end
    
    patch = (patch == "") and "0" or patch
    
    return tonumber(major), tonumber(minor), tonumber(patch)
  end
  
  local function compareVersions(major1, minor1, patch1, major2, minor2, patch2)
    if major1 ~= major2 then
      return (major1 < major2) and -1 or 1
    end
    
    if minor1 ~= minor2 then
      return (minor1 < minor2) and -1 or 1
    end
    
    if patch1 ~= patch2 then
      return (patch1 < patch2) and -1 or 1
    end
    
    return 0
  end
  
  local resourceName = GetCurrentResourceName()
  local currentVersion = GetResourceMetadata(resourceName, "version", 0)
  local currentMajor, currentMinor, currentPatch = parseVersion(currentVersion)
  
  if not currentMajor then
    Error(string.format("Unable to determine current resource version for '%s' (got '%s')", 
      resourceName, tostring(currentVersion)))
    return
  end
  
  local formattedCurrent = string.format("%d.%d.%d", currentMajor, currentMinor, currentPatch)
  
  PerformHttpRequest(
    "https://raw.githubusercontent.com/EliteDevelopmentX/Elite-Versions/master/EliteVehicleMenu.txt",
    function(statusCode, responseBody, headers)
      if statusCode ~= 200 then
        Error(string.format("Version check failed, Error: %s", statusCode))
        return
      end
      
      local data = json.decode(responseBody)
      local latestVersion = data and data.version
      local latestMajor, latestMinor, latestPatch = parseVersion(latestVersion)
      
      if not latestMajor then
        Error(string.format("Invalid latest version in response: '%s'", tostring(latestVersion)))
        return
      end
      
      local formattedLatest = string.format("%d.%d.%d", latestMajor, latestMinor, latestPatch)
      local comparison = compareVersions(currentMajor, currentMinor, currentPatch, 
        latestMajor, latestMinor, latestPatch)
      
      if comparison < 0 then
        local separator = "^9" .. string.rep("=", 26 + #"Elite Vehicle Menu") .. "^0"
        print(separator)
        print(string.format([[
New update available! ^0
Current Version: ^1%s^0.
New Version: ^2%s^0.
Note of changes:
^5%s^0.]], formattedCurrent, formattedLatest, data.news or "—"))
        print("Download it now from https://portal.cfx.re/")
        print(separator)
      elseif comparison == 0 then
        Info("You are using the latest version!")
      else
        Warn("You are using a version that is more recent than github!")
      end
    end,
    "GET"
  )
end

-- Run version check after delay
Citizen.SetTimeout(2000, checkVersion)
