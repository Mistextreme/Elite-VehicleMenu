-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1, AG2_1, AG3_1, AG4_1
function AG0_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2
  AG1_2 = framework
  AG1_2 = AG1_2.GetGroup
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  if not AG1_2 then
    AG2_2 = false
    return AG2_2
  end
  AG2_2 = ipairs
  AG3_2 = Config
  AG3_2 = AG3_2.Group
  AG2_2, AG3_2, AG4_2, AG5_2 = AG2_2(AG3_2)
  for AG6_2, AG7_2 in AG2_2, AG3_2, AG4_2, AG5_2 do
    if AG7_2 == AG1_2 then
      AG8_2 = true
      return AG8_2
    end
  end
  AG2_2 = false
  return AG2_2
end
AG1_1 = RegisterNetEvent
AG2_1 = "Elite-VehicleMenu:checkPerms"
function AG3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2
  AG0_2 = source
  AG1_2 = AG0_1
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  if AG1_2 then
    AG1_2 = TriggerClientEvent
    AG2_2 = "Elite-VehicleMenu:OpenMenu"
    AG3_2 = AG0_2
    AG1_2(AG2_2, AG3_2)
  end
end
AG1_1(AG2_1, AG3_1)
AG1_1 = AddEventHandler
AG2_1 = "onResourceStart"
function AG3_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2
  AG1_2 = GetCurrentResourceName
  AG1_2 = AG1_2()
  if AG0_2 == AG1_2 then
    AG1_2 = DetectFramework
    AG1_2()
  end
end
AG1_1(AG2_1, AG3_1)
AG1_1 = AddEventHandler
AG2_1 = "onResourceStart"
function AG3_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2
  if "es_extended" == AG0_2 or "qb-core" == AG0_2 then
    AG1_2 = DetectFramework
    AG1_2()
  end
end
AG1_1(AG2_1, AG3_1)
function AG1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2
  function AG0_2(AG0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG1_3, AG2_3, AG3_3, AG4_3, AG5_3, AG6_3, AG7_3
    if not AG0_3 then
      AG1_3 = nil
      return AG1_3
    end
    AG2_3 = AG0_3
    AG1_3 = AG0_3.match
    AG3_3 = "(%d+)%.(%d+)%.?(%d*)"
    AG1_3, AG2_3, AG3_3 = AG1_3(AG2_3, AG3_3)
    if not AG1_3 or not AG2_3 then
      AG4_3 = nil
      return AG4_3
    end
    if "" == AG3_3 then
      AG3_3 = "0"
    end
    AG4_3 = tonumber
    AG5_3 = AG1_3
    AG4_3 = AG4_3(AG5_3)
    AG5_3 = tonumber
    AG6_3 = AG2_3
    AG5_3 = AG5_3(AG6_3)
    AG6_3 = tonumber
    AG7_3 = AG3_3
    AG6_3, AG7_3 = AG6_3(AG7_3)
    return AG4_3, AG5_3, AG6_3, AG7_3
  end
  function AG1_2(AG0_3, AG1_3, AG2_3, AG3_3, AG4_3, AG5_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG6_3
    if AG0_3 ~= AG3_3 then
      if AG0_3 < AG3_3 then
        AG6_3 = -1
        if AG6_3 then
          goto AG_LABEL_9
        end
      end
      AG6_3 = 1
      -- [FIX IF ERROR] Move ::AG_LABEL_9:: outside nested blocks until all 'goto AG_LABEL_9' can see it
      ::AG_LABEL_9::
      return AG6_3
    end
    if AG1_3 ~= AG4_3 then
      if AG1_3 < AG4_3 then
        AG6_3 = -1
        if AG6_3 then
          goto AG_LABEL_18
        end
      end
      AG6_3 = 1
      -- [FIX IF ERROR] Move ::AG_LABEL_18:: outside nested blocks until all 'goto AG_LABEL_18' can see it
      ::AG_LABEL_18::
      return AG6_3
    end
    if AG2_3 ~= AG5_3 then
      if AG2_3 < AG5_3 then
        AG6_3 = -1
        if AG6_3 then
          goto AG_LABEL_27
        end
      end
      AG6_3 = 1
      -- [FIX IF ERROR] Move ::AG_LABEL_27:: outside nested blocks until all 'goto AG_LABEL_27' can see it
      ::AG_LABEL_27::
      return AG6_3
    end
    AG6_3 = 0
    return AG6_3
  end
  AG2_2 = GetCurrentResourceName
  AG2_2 = AG2_2()
  AG3_2 = GetResourceMetadata
  AG4_2 = AG2_2
  AG5_2 = "version"
  AG6_2 = 0
  AG3_2 = AG3_2(AG4_2, AG5_2, AG6_2)
  AG4_2 = AG0_2
  AG5_2 = AG3_2
  AG4_2, AG5_2, AG6_2 = AG4_2(AG5_2)
  if not AG4_2 then
    AG7_2 = Error
    AG8_2 = "Unable to determine current resource version for '%s' (got '%s')"
    AG9_2 = AG8_2
    AG8_2 = AG8_2.format
    AG10_2 = AG2_2
    AG11_2 = tostring
    AG12_2 = AG3_2
    AG11_2, AG12_2 = AG11_2(AG12_2)
    AG8_2, AG9_2, AG10_2, AG11_2, AG12_2 = AG8_2(AG9_2, AG10_2, AG11_2, AG12_2)
    return AG7_2(AG8_2, AG9_2, AG10_2, AG11_2, AG12_2)
  end
  AG7_2 = "%d.%d.%d"
  AG8_2 = AG7_2
  AG7_2 = AG7_2.format
  AG9_2 = AG4_2
  AG10_2 = AG5_2
  AG11_2 = AG6_2
  AG7_2 = AG7_2(AG8_2, AG9_2, AG10_2, AG11_2)
  AG8_2 = PerformHttpRequest
  AG9_2 = "https://raw.githubusercontent.com/EliteDevelopmentX/Elite-Versions/master/EliteVehicleMenu.txt"
  function AG10_2(AG0_3, AG1_3, AG2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG3_3, AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3
    if 200 ~= AG0_3 then
      AG3_3 = Error
      AG4_3 = "Version check failed, Error: %s"
      AG5_3 = AG4_3
      AG4_3 = AG4_3.format
      AG6_3 = AG0_3
      AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3 = AG4_3(AG5_3, AG6_3)
      return AG3_3(AG4_3, AG5_3, AG6_3, AG7_3, AG8_3, AG9_3, AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3)
    end
    AG3_3 = json
    AG3_3 = AG3_3.decode
    AG4_3 = AG1_3
    AG3_3 = AG3_3(AG4_3)
    AG4_3 = AG3_3 or AG4_3
    if AG3_3 then
      AG4_3 = AG3_3.version
    end
    AG5_3 = AG0_2
    AG6_3 = AG4_3
    AG5_3, AG6_3, AG7_3 = AG5_3(AG6_3)
    if not AG5_3 then
      AG8_3 = Error
      AG9_3 = "Invalid latest version in response: '%s'"
      AG10_3 = AG9_3
      AG9_3 = AG9_3.format
      AG11_3 = tostring
      AG12_3 = AG4_3
      AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3 = AG11_3(AG12_3)
      AG9_3, AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3 = AG9_3(AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3)
      return AG8_3(AG9_3, AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3, AG16_3)
    end
    AG8_3 = "%d.%d.%d"
    AG9_3 = AG8_3
    AG8_3 = AG8_3.format
    AG10_3 = AG5_3
    AG11_3 = AG6_3
    AG12_3 = AG7_3
    AG8_3 = AG8_3(AG9_3, AG10_3, AG11_3, AG12_3)
    AG9_3 = AG1_2
    AG10_3 = AG4_2
    AG11_3 = AG5_2
    AG12_3 = AG6_2
    AG13_3 = AG5_3
    AG14_3 = AG6_3
    AG15_3 = AG7_3
    AG9_3 = AG9_3(AG10_3, AG11_3, AG12_3, AG13_3, AG14_3, AG15_3)
    if AG9_3 < 0 then
      AG10_3 = "^9"
      AG11_3 = string
      AG11_3 = AG11_3.rep
      AG12_3 = "="
      AG13_3 = "Elite Vehicle Menu"
      AG13_3 = #AG13_3
      AG13_3 = 26 + AG13_3
      AG11_3 = AG11_3(AG12_3, AG13_3)
      AG12_3 = "^0"
      AG10_3 = AG10_3 .. AG11_3 .. AG12_3
      AG11_3 = print
      AG12_3 = AG10_3
      AG11_3(AG12_3)
      AG11_3 = print
      AG12_3 = [[
New update available! ^0
Current Version: ^1%s^0.
New Version: ^2%s^0.
Note of changes:
^5%s^0.]]
      AG13_3 = AG12_3
      AG12_3 = AG12_3.format
      AG14_3 = AG7_2
      AG15_3 = AG8_3
      AG16_3 = AG3_3.news
      if not AG16_3 then
        AG16_3 = "\226\128\148"
      end
      AG12_3, AG13_3, AG14_3, AG15_3, AG16_3 = AG12_3(AG13_3, AG14_3, AG15_3, AG16_3)
      AG11_3(AG12_3, AG13_3, AG14_3, AG15_3, AG16_3)
      AG11_3 = print
      AG12_3 = "Download it now from https://portal.cfx.re/"
      AG11_3(AG12_3)
      AG11_3 = print
      AG12_3 = AG10_3
      AG11_3(AG12_3)
      return
    elseif 0 == AG9_3 then
      AG10_3 = Info
      AG11_3 = "You are using the latest version!"
      AG10_3(AG11_3)
      return
    else
      AG10_3 = Warn
      AG11_3 = "You are using a version that is more recent than github!"
      AG10_3(AG11_3)
      return
    end
  end
  AG11_2 = "GET"
  AG8_2(AG9_2, AG10_2, AG11_2)
end
AG2_1 = Citizen
AG2_1 = AG2_1.SetTimeout
AG3_1 = 2000
AG4_1 = AG1_1
AG2_1(AG3_1, AG4_1)
