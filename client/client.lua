-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename AG0_1, AG1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local AG0_1, AG1_1, AG2_1, AG3_1, AG4_1, AG5_1, AG6_1, AG7_1, AG8_1, AG9_1, AG10_1, AG11_1, AG12_1, AG13_1, AG14_1, AG15_1, AG16_1, AG17_1, AG18_1, AG19_1, AG20_1, AG21_1
AG0_1 = {}
AG1_1 = Config
AG1_1 = AG1_1.Locales
AG2_1 = Locales
AG2_1 = AG2_1[AG1_1]
function AG3_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2
  AG1_2 = "veh_fav_%s"
  AG2_2 = AG1_2
  AG1_2 = AG1_2.format
  AG3_2 = AG0_2 or AG3_2
  if not AG0_2 then
    AG3_2 = ""
  end
  return AG1_2(AG2_2, AG3_2)
end
function AG4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2
  AG0_2 = {}
  AG0_1 = AG0_2
  AG0_2 = GetAllVehicleModels
  AG0_2 = AG0_2()
  if not AG0_2 then
    return
  end
  AG1_2 = 1
  AG2_2 = #AG0_2
  AG3_2 = 1
  for AG4_2 = AG1_2, AG2_2, AG3_2 do
    AG5_2 = AG0_2[AG4_2]
    AG6_2 = AG3_1
    AG7_2 = AG5_2
    AG6_2 = AG6_2(AG7_2)
    AG7_2 = GetResourceKvpString
    AG8_2 = AG6_2
    AG7_2 = AG7_2(AG8_2)
    if nil ~= AG7_2 then
      AG8_2 = AG0_1
      AG9_2 = "1" == AG7_2
      AG8_2[AG5_2] = AG9_2
    end
  end
end
function AG5_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2
  AG2_2 = AG0_1
  if AG1_2 then
    AG3_2 = true
    if AG3_2 then
      goto AG_LABEL_8
    end
  end
  AG3_2 = false
  -- [FIX IF ERROR] Move ::AG_LABEL_8:: outside nested blocks until all 'goto AG_LABEL_8' can see it
  ::AG_LABEL_8::
  AG2_2[AG0_2] = AG3_2
  AG2_2 = SetResourceKvp
  AG3_2 = AG3_1
  AG4_2 = AG0_2
  AG3_2 = AG3_2(AG4_2)
  if AG1_2 then
    AG4_2 = "1"
    if AG4_2 then
      goto AG_LABEL_19
    end
  end
  AG4_2 = "0"
  -- [FIX IF ERROR] Move ::AG_LABEL_19:: outside nested blocks until all 'goto AG_LABEL_19' can see it
  ::AG_LABEL_19::
  AG2_2(AG3_2, AG4_2)
end
function AG6_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2
  AG1_2 = GetDisplayNameFromVehicleModel
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  AG2_2 = GetLabelText
  AG3_2 = AG1_2
  AG2_2 = AG2_2(AG3_2)
  AG3_2 = AG1_2 or AG3_2
  if "NULL" ~= AG2_2 or not AG1_2 then
    AG3_2 = AG2_2
  end
  return AG3_2
end
function AG7_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2
  AG1_2 = GetVehicleClassFromName
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  AG2_2 = "VEH_CLASS_%d"
  AG3_2 = AG2_2
  AG2_2 = AG2_2.format
  AG4_2 = AG1_2
  AG2_2 = AG2_2(AG3_2, AG4_2)
  AG3_2 = GetLabelText
  AG4_2 = AG2_2
  AG3_2 = AG3_2(AG4_2)
  AG4_2 = AG3_2 or AG4_2
  if nil == AG3_2 or "NULL" == AG3_2 or not AG3_2 then
    AG4_2 = tostring
    AG5_2 = AG1_2
    AG4_2 = AG4_2(AG5_2)
  end
  return AG4_2
end
function AG8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2
  AG0_2 = GetAllVehicleModels
  AG0_2 = AG0_2()
  AG1_2 = {}
  AG2_2 = {}
  AG3_2 = {}
  if not AG0_2 then
    AG4_2 = AG3_2
    AG5_2 = AG1_2
    return AG4_2, AG5_2
  end
  AG4_2 = 1
  AG5_2 = #AG0_2
  AG6_2 = 1
  for AG7_2 = AG4_2, AG5_2, AG6_2 do
    AG8_2 = AG0_2[AG7_2]
    AG9_2 = GetHashKey
    AG10_2 = AG8_2
    AG9_2 = AG9_2(AG10_2)
    AG10_2 = AG6_1
    AG11_2 = AG9_2
    AG10_2 = AG10_2(AG11_2)
    AG11_2 = AG7_1
    AG12_2 = AG9_2
    AG11_2 = AG11_2(AG12_2)
    AG12_2 = "img/%s.png"
    AG13_2 = AG12_2
    AG12_2 = AG12_2.format
    AG14_2 = string
    AG14_2 = AG14_2.lower
    AG15_2 = AG8_2
    AG14_2, AG15_2 = AG14_2(AG15_2)
    AG12_2 = AG12_2(AG13_2, AG14_2, AG15_2)
    AG13_2 = #AG1_2
    AG13_2 = AG13_2 + 1
    AG14_2 = {}
    AG14_2.label = AG10_2
    AG14_2.name = AG8_2
    AG14_2.category = AG11_2
    AG14_2.image = AG12_2
    AG15_2 = AG0_1
    AG15_2 = AG15_2[AG8_2]
    AG15_2 = true == AG15_2
    AG14_2.favorite = AG15_2
    AG1_2[AG13_2] = AG14_2
    if AG11_2 then
      AG13_2 = AG2_2[AG11_2]
      if not AG13_2 then
        AG2_2[AG11_2] = true
        AG13_2 = #AG3_2
        AG13_2 = AG13_2 + 1
        AG3_2[AG13_2] = AG11_2
      end
    end
  end
  AG4_2 = table
  AG4_2 = AG4_2.sort
  AG5_2 = AG3_2
  AG4_2(AG5_2)
  AG4_2 = table
  AG4_2 = AG4_2.sort
  AG5_2 = AG1_2
  function AG6_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3
    AG2_3 = AG0_3.label
    if not AG2_3 then
      AG2_3 = AG0_3.name
    end
    AG3_3 = AG1_3.label
    if not AG3_3 then
      AG3_3 = AG1_3.name
    end
    AG2_3 = AG2_3 < AG3_3
    return AG2_3
  end
  AG4_2(AG5_2, AG6_2)
  AG4_2 = AG3_2
  AG5_2 = AG1_2
  return AG4_2, AG5_2
end
function AG9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2, AG19_2, AG20_2
  AG0_2 = Config
  AG0_2 = AG0_2.CustomCategory
  if AG0_2 then
    AG0_2 = type
    AG1_2 = Config
    AG1_2 = AG1_2.CustomCategory
    AG0_2 = AG0_2(AG1_2)
    if "table" == AG0_2 then
      goto AG_LABEL_14
    end
  end
  AG0_2 = AG8_1
  return AG0_2()
  -- [FIX IF ERROR] Move ::AG_LABEL_14:: outside nested blocks until all 'goto AG_LABEL_14' can see it
  ::AG_LABEL_14::
  AG0_2 = Config
  AG0_2 = AG0_2.OnlyCustomCategory
  if AG0_2 then
    AG0_2 = {}
    AG1_2 = {}
    AG2_2 = pairs
    AG3_2 = Config
    AG3_2 = AG3_2.CustomCategory
    AG2_2, AG3_2, AG4_2, AG5_2 = AG2_2(AG3_2)
    for AG6_2, AG7_2 in AG2_2, AG3_2, AG4_2, AG5_2 do
      AG8_2 = #AG0_2
      AG8_2 = AG8_2 + 1
      AG9_2 = AG7_2.label
      AG0_2[AG8_2] = AG9_2
      AG8_2 = ipairs
      AG9_2 = AG7_2.vehicle
      AG8_2, AG9_2, AG10_2, AG11_2 = AG8_2(AG9_2)
      for AG12_2, AG13_2 in AG8_2, AG9_2, AG10_2, AG11_2 do
        AG14_2 = #AG1_2
        AG14_2 = AG14_2 + 1
        AG15_2 = {}
        AG16_2 = AG13_2.label
        AG15_2.label = AG16_2
        AG16_2 = AG13_2.spawnName
        AG15_2.name = AG16_2
        AG16_2 = AG7_2.label
        AG15_2.category = AG16_2
        AG16_2 = "img/%s.png"
        AG17_2 = AG16_2
        AG16_2 = AG16_2.format
        AG18_2 = string
        AG18_2 = AG18_2.lower
        AG19_2 = AG13_2.spawnName
        AG18_2, AG19_2, AG20_2 = AG18_2(AG19_2)
        AG16_2 = AG16_2(AG17_2, AG18_2, AG19_2, AG20_2)
        AG15_2.image = AG16_2
        AG17_2 = AG13_2.spawnName
        AG16_2 = AG0_1
        AG16_2 = AG16_2[AG17_2]
        AG16_2 = true == AG16_2
        AG15_2.favorite = AG16_2
        AG1_2[AG14_2] = AG15_2
      end
    end
    AG2_2 = table
    AG2_2 = AG2_2.sort
    AG3_2 = AG0_2
    AG2_2(AG3_2)
    AG2_2 = table
    AG2_2 = AG2_2.sort
    AG3_2 = AG1_2
    function AG4_2(AG0_3, AG1_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename AG0_1, AG1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local AG2_3, AG3_3
      AG2_3 = AG0_3.label
      AG3_3 = AG1_3.label
      AG2_3 = AG2_3 < AG3_3
      return AG2_3
    end
    AG2_2(AG3_2, AG4_2)
    AG2_2 = AG0_2
    AG3_2 = AG1_2
    return AG2_2, AG3_2
  end
  AG0_2 = AG8_1
  AG0_2, AG1_2 = AG0_2()
  AG2_2 = pairs
  AG3_2 = Config
  AG3_2 = AG3_2.CustomCategory
  AG2_2, AG3_2, AG4_2, AG5_2 = AG2_2(AG3_2)
  for AG6_2, AG7_2 in AG2_2, AG3_2, AG4_2, AG5_2 do
    AG8_2 = false
    AG9_2 = ipairs
    AG10_2 = AG0_2
    AG9_2, AG10_2, AG11_2, AG12_2 = AG9_2(AG10_2)
    for AG13_2, AG14_2 in AG9_2, AG10_2, AG11_2, AG12_2 do
      AG15_2 = AG7_2.label
      if AG14_2 == AG15_2 then
        AG8_2 = true
        break
      end
    end
    if not AG8_2 then
      AG9_2 = #AG0_2
      AG9_2 = AG9_2 + 1
      AG10_2 = AG7_2.label
      AG0_2[AG9_2] = AG10_2
    end
    AG9_2 = ipairs
    AG10_2 = AG7_2.vehicle
    AG9_2, AG10_2, AG11_2, AG12_2 = AG9_2(AG10_2)
    for AG13_2, AG14_2 in AG9_2, AG10_2, AG11_2, AG12_2 do
      AG15_2 = #AG1_2
      AG15_2 = AG15_2 + 1
      AG16_2 = {}
      AG17_2 = AG14_2.label
      AG16_2.label = AG17_2
      AG17_2 = AG14_2.spawnName
      AG16_2.name = AG17_2
      AG17_2 = AG7_2.label
      AG16_2.category = AG17_2
      AG17_2 = "img/%s.png"
      AG18_2 = AG17_2
      AG17_2 = AG17_2.format
      AG19_2 = string
      AG19_2 = AG19_2.lower
      AG20_2 = AG14_2.spawnName
      AG19_2, AG20_2 = AG19_2(AG20_2)
      AG17_2 = AG17_2(AG18_2, AG19_2, AG20_2)
      AG16_2.image = AG17_2
      AG18_2 = AG14_2.spawnName
      AG17_2 = AG0_1
      AG17_2 = AG17_2[AG18_2]
      AG17_2 = true == AG17_2
      AG16_2.favorite = AG17_2
      AG1_2[AG15_2] = AG16_2
    end
  end
  AG2_2 = table
  AG2_2 = AG2_2.sort
  AG3_2 = AG0_2
  AG2_2(AG3_2)
  AG2_2 = table
  AG2_2 = AG2_2.sort
  AG3_2 = AG1_2
  function AG4_2(AG0_3, AG1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename AG0_1, AG1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local AG2_3, AG3_3
    AG2_3 = AG0_3.label
    AG3_3 = AG1_3.label
    AG2_3 = AG2_3 < AG3_3
    return AG2_3
  end
  AG2_2(AG3_2, AG4_2)
  AG2_2 = AG0_2
  AG3_2 = AG1_2
  return AG2_2, AG3_2
end
function AG10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2
  AG0_2 = AG4_1
  AG0_2()
  AG0_2 = AG9_1
  AG0_2, AG1_2 = AG0_2()
  AG2_2 = SetNuiFocus
  AG3_2 = true
  AG4_2 = true
  AG2_2(AG3_2, AG4_2)
  AG2_2 = SendNUIMessage
  AG3_2 = {}
  AG3_2.action = "showMenu"
  AG3_2.categories = AG0_2
  AG3_2.vehicles = AG1_2
  AG4_2 = AG2_1
  AG3_2.locales = AG4_2
  AG4_2 = Config
  AG4_2 = AG4_2.ImgLink
  AG3_2.imgLink = AG4_2
  AG2_2(AG3_2)
end
AG11_1 = RegisterNetEvent
AG12_1 = "Elite-VehicleMenu:OpenMenu"
function AG13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2
  AG0_2 = AG10_1
  AG0_2()
end
AG11_1(AG12_1, AG13_1)
function AG11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2
  AG0_2 = SetNuiFocus
  AG1_2 = false
  AG2_2 = false
  AG0_2(AG1_2, AG2_2)
  AG0_2 = SendNUIMessage
  AG1_2 = {}
  AG1_2.action = "hideMenu"
  AG0_2(AG1_2)
end
AG12_1 = Config
AG12_1 = AG12_1.Keys
if AG12_1 then
  AG12_1 = type
  AG13_1 = Config
  AG13_1 = AG13_1.Keys
  AG12_1 = AG12_1(AG13_1)
  if "string" == AG12_1 then
    AG12_1 = RegisterCommand
    AG13_1 = "elitevehiclemenu"
    function AG14_1()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename AG0_1, AG1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local AG0_2, AG1_2
      AG0_2 = TriggerServerEvent
      AG1_2 = "Elite-VehicleMenu:checkPerms"
      AG0_2(AG1_2)
    end
    AG12_1(AG13_1, AG14_1)
    AG12_1 = RegisterKeyMapping
    AG13_1 = "elitevehiclemenu"
    AG14_1 = "Open Vehicle Menu"
    AG15_1 = "keyboard"
    AG16_1 = Config
    AG16_1 = AG16_1.Keys
    AG12_1(AG13_1, AG14_1, AG15_1, AG16_1)
  end
end
AG12_1 = RegisterNUICallback
AG13_1 = "toggleFavorite"
function AG14_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2
  AG2_2 = AG0_2 or nil
  if AG0_2 then
    AG2_2 = AG0_2.name
  end
  AG3_2 = AG0_2 or AG3_2
  if AG0_2 then
    AG3_2 = AG0_2.favorite
  end
  if nil ~= AG2_2 and nil ~= AG3_2 then
    AG4_2 = AG5_1
    AG5_2 = AG2_2
    AG6_2 = AG3_2
    AG4_2(AG5_2, AG6_2)
  end
  AG4_2 = AG1_2
  AG5_2 = "ok"
  AG4_2(AG5_2)
end
AG12_1(AG13_1, AG14_1)
AG12_1 = nil
AG13_1 = {}
AG13_1.plate01 = 0
AG13_1.plate02 = 1
AG13_1.plate03 = 2
AG13_1.plate04 = 3
AG13_1.plate05 = 4
AG13_1.yankton = 5
function AG14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2
  AG0_2 = {}
  AG1_2 = math
  AG1_2 = AG1_2.random
  AG2_2 = 0
  AG3_2 = 255
  AG1_2 = AG1_2(AG2_2, AG3_2)
  AG0_2.r = AG1_2
  AG1_2 = math
  AG1_2 = AG1_2.random
  AG2_2 = 0
  AG3_2 = 255
  AG1_2 = AG1_2(AG2_2, AG3_2)
  AG0_2.g = AG1_2
  AG1_2 = math
  AG1_2 = AG1_2.random
  AG2_2 = 0
  AG3_2 = 255
  AG1_2 = AG1_2(AG2_2, AG3_2)
  AG0_2.b = AG1_2
  return AG0_2
end
function AG15_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2
  if not AG0_2 then
    AG0_2 = 8
  end
  AG1_2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  AG2_2 = {}
  AG3_2 = 1
  AG4_2 = AG0_2
  AG5_2 = 1
  for AG6_2 = AG3_2, AG4_2, AG5_2 do
    AG7_2 = math
    AG7_2 = AG7_2.random
    AG8_2 = 1
    AG9_2 = #AG1_2
    AG7_2 = AG7_2(AG8_2, AG9_2)
    AG8_2 = #AG2_2
    AG8_2 = AG8_2 + 1
    AG9_2 = string
    AG9_2 = AG9_2.sub
    AG10_2 = AG1_2
    AG11_2 = AG7_2
    AG12_2 = AG7_2
    AG9_2 = AG9_2(AG10_2, AG11_2, AG12_2)
    AG2_2[AG8_2] = AG9_2
  end
  AG3_2 = table
  AG3_2 = AG3_2.concat
  AG4_2 = AG2_2
  return AG3_2(AG4_2)
end
function AG16_1(AG0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG1_2, AG2_2, AG3_2
  AG1_2 = HasModelLoaded
  AG2_2 = AG0_2
  AG1_2 = AG1_2(AG2_2)
  if not AG1_2 then
    AG1_2 = RequestModel
    AG2_2 = AG0_2
    AG1_2(AG2_2)
    AG1_2 = 0
    while true do
      AG2_2 = HasModelLoaded
      AG3_2 = AG0_2
      AG2_2 = AG2_2(AG3_2)
      if AG2_2 then
        break
      end
      AG2_2 = 200
      if not (AG1_2 < AG2_2) then
        break
      end
      AG2_2 = Wait
      AG3_2 = 10
      AG2_2(AG3_2)
      AG1_2 = AG1_2 + 1
    end
  end
  AG1_2 = HasModelLoaded
  AG2_2 = AG0_2
  return AG1_2(AG2_2)
end
function AG17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG0_2, AG1_2, AG2_2, AG3_2, AG4_2
  AG0_2 = AG12_1
  if AG0_2 then
    AG0_2 = DoesEntityExist
    AG1_2 = AG12_1
    AG0_2 = AG0_2(AG1_2)
    if AG0_2 then
      AG0_2 = GetVehicleNumberPlateText
      AG1_2 = AG12_1
      AG0_2 = AG0_2(AG1_2)
      AG1_2 = utils
      AG1_2 = AG1_2.RemoveCarKeys
      AG2_2 = AG12_1
      AG3_2 = AG0_2
      AG1_2(AG2_2, AG3_2)
      AG1_2 = SetEntityAsMissionEntity
      AG2_2 = AG12_1
      AG3_2 = true
      AG4_2 = true
      AG1_2(AG2_2, AG3_2, AG4_2)
      AG1_2 = DeleteVehicle
      AG2_2 = AG12_1
      AG1_2(AG2_2)
      AG1_2 = nil
      AG12_1 = AG1_2
    end
  end
end
function AG18_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2
  if not AG1_2 then
    AG2_2 = {}
    AG1_2 = AG2_2
  end
  AG2_2 = type
  AG3_2 = AG0_2
  AG2_2 = AG2_2(AG3_2)
  AG2_2 = AG0_2 or AG2_2
  if "number" ~= AG2_2 or not AG0_2 then
    AG2_2 = GetHashKey
    AG3_2 = AG0_2
    AG2_2 = AG2_2(AG3_2)
  end
  AG3_2 = IsModelInCdimage
  AG4_2 = AG2_2
  AG3_2 = AG3_2(AG4_2)
  if AG3_2 then
    AG3_2 = IsModelAVehicle
    AG4_2 = AG2_2
    AG3_2 = AG3_2(AG4_2)
    if AG3_2 then
      goto AG_LABEL_28
    end
  end
  AG3_2 = nil
  return AG3_2
  -- [FIX IF ERROR] Move ::AG_LABEL_28:: outside nested blocks until all 'goto AG_LABEL_28' can see it
  ::AG_LABEL_28::
  AG3_2 = AG16_1
  AG4_2 = AG2_2
  AG3_2 = AG3_2(AG4_2)
  if not AG3_2 then
    AG3_2 = nil
    return AG3_2
  end
  AG3_2 = PlayerPedId
  AG3_2 = AG3_2()
  AG4_2 = table
  AG4_2 = AG4_2.unpack
  AG5_2 = GetEntityCoords
  AG6_2 = AG3_2
  AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2 = AG5_2(AG6_2)
  AG4_2, AG5_2, AG6_2 = AG4_2(AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2)
  AG7_2 = table
  AG7_2 = AG7_2.unpack
  AG8_2 = GetOffsetFromEntityInWorldCoords
  AG9_2 = AG3_2
  AG10_2 = 0.0
  AG11_2 = 5.0
  AG12_2 = 0.0
  AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2 = AG8_2(AG9_2, AG10_2, AG11_2, AG12_2)
  AG7_2, AG8_2, AG9_2 = AG7_2(AG8_2, AG9_2, AG10_2, AG11_2, AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2)
  AG10_2 = GetEntityHeading
  AG11_2 = AG3_2
  AG10_2 = AG10_2(AG11_2)
  AG11_2 = Config
  AG11_2 = AG11_2.DeleteLastVehicle
  if AG11_2 then
    AG11_2 = AG17_1
    AG11_2()
  end
  AG11_2 = CreateVehicle
  AG12_2 = AG2_2
  AG13_2 = AG7_2
  AG14_2 = AG8_2
  AG15_2 = AG9_2
  AG16_2 = AG10_2
  AG17_2 = true
  AG18_2 = false
  AG11_2 = AG11_2(AG12_2, AG13_2, AG14_2, AG15_2, AG16_2, AG17_2, AG18_2)
  AG12_2 = DoesEntityExist
  AG13_2 = AG11_2
  AG12_2 = AG12_2(AG13_2)
  if not AG12_2 then
    AG12_2 = nil
    return AG12_2
  end
  AG12_2 = SetVehicleOnGroundProperly
  AG13_2 = AG11_2
  AG12_2(AG13_2)
  AG12_2 = SetEntityAsMissionEntity
  AG13_2 = AG11_2
  AG14_2 = true
  AG15_2 = true
  AG12_2(AG13_2, AG14_2, AG15_2)
  AG12_2 = SetPedIntoVehicle
  AG13_2 = AG3_2
  AG14_2 = AG11_2
  AG15_2 = -1
  AG12_2(AG13_2, AG14_2, AG15_2)
  AG12_2 = SetVehicleEngineOn
  AG13_2 = AG11_2
  AG14_2 = true
  AG15_2 = true
  AG16_2 = false
  AG12_2(AG13_2, AG14_2, AG15_2, AG16_2)
  AG12_2 = SetVehicleDirtLevel
  AG13_2 = AG11_2
  AG14_2 = 0.0
  AG12_2(AG13_2, AG14_2)
  AG12_2 = AG1_2.color
  if AG12_2 then
    AG12_2 = AG1_2.color
    AG13_2 = SetVehicleModKit
    AG14_2 = AG11_2
    AG15_2 = 0
    AG13_2(AG14_2, AG15_2)
    AG13_2 = ToggleVehicleMod
    AG14_2 = AG11_2
    AG15_2 = 20
    AG16_2 = true
    AG13_2(AG14_2, AG15_2, AG16_2)
    AG13_2 = SetVehicleCustomPrimaryColour
    AG14_2 = AG11_2
    AG15_2 = AG12_2.r
    AG16_2 = AG12_2.g
    AG17_2 = AG12_2.b
    AG13_2(AG14_2, AG15_2, AG16_2, AG17_2)
    AG13_2 = SetVehicleCustomSecondaryColour
    AG14_2 = AG11_2
    AG15_2 = AG12_2.r
    AG16_2 = AG12_2.g
    AG17_2 = AG12_2.b
    AG13_2(AG14_2, AG15_2, AG16_2, AG17_2)
    AG13_2 = SetVehicleTyreSmokeColor
    AG14_2 = AG11_2
    AG15_2 = AG12_2.r
    AG16_2 = AG12_2.g
    AG17_2 = AG12_2.b
    AG13_2(AG14_2, AG15_2, AG16_2, AG17_2)
  end
  AG12_2 = AG1_2.plate
  if AG12_2 then
    AG12_2 = tostring
    AG13_2 = AG1_2.plate
    AG13_2 = AG13_2.text
    if not AG13_2 then
      AG13_2 = ""
    end
    AG12_2 = AG12_2(AG13_2)
    AG13_2 = AG1_2.plate
    AG13_2 = AG13_2.style
    if not AG13_2 then
      AG13_2 = "plate01"
    end
    AG14_2 = AG13_1
    AG14_2 = AG14_2[AG13_2]
    if not AG14_2 then
      AG14_2 = 0
    end
    AG15_2 = SetVehicleNumberPlateText
    AG16_2 = AG11_2
    AG17_2 = AG12_2
    AG15_2(AG16_2, AG17_2)
    AG15_2 = SetVehicleNumberPlateTextIndex
    AG16_2 = AG11_2
    AG17_2 = AG14_2
    AG15_2(AG16_2, AG17_2)
  end
  AG12_2 = GetVehicleNumberPlateText
  AG13_2 = AG11_2
  AG12_2 = AG12_2(AG13_2)
  AG13_2 = utils
  AG13_2 = AG13_2.GiveCarKeys
  AG14_2 = AG11_2
  AG15_2 = AG12_2
  AG13_2(AG14_2, AG15_2)
  AG13_2 = Config
  AG13_2 = AG13_2.CloseMenu
  if AG13_2 then
    AG13_2 = AG11_1
    AG13_2()
  end
  AG13_2 = SetModelAsNoLongerNeeded
  AG14_2 = AG2_2
  AG13_2(AG14_2)
  AG12_1 = AG11_2
  return AG11_2
end
AG19_1 = RegisterNUICallback
AG20_1 = "spawnVehicle"
function AG21_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2
  AG2_2 = AG0_2 or nil
  if AG0_2 then
    AG2_2 = AG0_2.name
  end
  if not AG2_2 then
    AG3_2 = AG1_2
    AG4_2 = "ok"
    AG3_2(AG4_2)
    return
  end
  AG3_2 = {}
  AG4_2 = AG0_2.color
  if AG4_2 then
    AG4_2 = type
    AG5_2 = AG0_2.color
    AG4_2 = AG4_2(AG5_2)
    if "table" == AG4_2 then
      AG4_2 = {}
      AG5_2 = tonumber
      AG6_2 = AG0_2.color
      AG6_2 = AG6_2.r
      AG5_2 = AG5_2(AG6_2)
      if not AG5_2 then
        AG5_2 = 255
      end
      AG4_2.r = AG5_2
      AG5_2 = tonumber
      AG6_2 = AG0_2.color
      AG6_2 = AG6_2.g
      AG5_2 = AG5_2(AG6_2)
      if not AG5_2 then
        AG5_2 = 255
      end
      AG4_2.g = AG5_2
      AG5_2 = tonumber
      AG6_2 = AG0_2.color
      AG6_2 = AG6_2.b
      AG5_2 = AG5_2(AG6_2)
      if not AG5_2 then
        AG5_2 = 255
      end
      AG4_2.b = AG5_2
      AG3_2.color = AG4_2
    end
  end
  AG4_2 = AG0_2.plate
  if AG4_2 then
    AG4_2 = type
    AG5_2 = AG0_2.plate
    AG4_2 = AG4_2(AG5_2)
    if "table" == AG4_2 then
      AG4_2 = AG0_2.plate
      AG4_2 = AG4_2.text
      if AG4_2 then
        AG4_2 = AG0_2.plate
        AG4_2 = AG4_2.text
        AG4_2 = #AG4_2
        if AG4_2 > 0 then
          AG4_2 = {}
          AG5_2 = tostring
          AG6_2 = AG0_2.plate
          AG6_2 = AG6_2.text
          AG5_2 = AG5_2(AG6_2)
          AG4_2.text = AG5_2
          AG5_2 = tostring
          AG6_2 = AG0_2.plate
          AG6_2 = AG6_2.style
          if not AG6_2 then
            AG6_2 = "plate01"
          end
          AG5_2 = AG5_2(AG6_2)
          AG4_2.style = AG5_2
          AG3_2.plate = AG4_2
        end
      end
    end
  end
  AG4_2 = AG18_1
  AG5_2 = AG2_2
  AG6_2 = AG3_2
  AG4_2(AG5_2, AG6_2)
  AG4_2 = AG1_2
  AG5_2 = "ok"
  AG4_2(AG5_2)
end
AG19_1(AG20_1, AG21_1)
AG19_1 = RegisterNUICallback
AG20_1 = "randomVehicle"
function AG21_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2, AG4_2, AG5_2, AG6_2, AG7_2, AG8_2, AG9_2, AG10_2, AG11_2, AG12_2
  AG2_2 = AG8_1
  AG2_2, AG3_2 = AG2_2()
  if AG3_2 then
    AG4_2 = #AG3_2
    if 0 ~= AG4_2 then
      goto AG_LABEL_12
    end
  end
  AG4_2 = AG1_2
  AG5_2 = "ok"
  AG4_2(AG5_2)
  return
  -- [FIX IF ERROR] Move ::AG_LABEL_12:: outside nested blocks until all 'goto AG_LABEL_12' can see it
  ::AG_LABEL_12::
  AG4_2 = math
  AG4_2 = AG4_2.random
  AG5_2 = 1
  AG6_2 = #AG3_2
  AG4_2 = AG4_2(AG5_2, AG6_2)
  AG4_2 = AG3_2[AG4_2]
  AG5_2 = AG14_1
  AG5_2 = AG5_2()
  AG6_2 = {}
  AG7_2 = "plate01"
  AG8_2 = "plate02"
  AG9_2 = "plate03"
  AG10_2 = "plate04"
  AG11_2 = "plate05"
  AG12_2 = "yankton"
  AG6_2[1] = AG7_2
  AG6_2[2] = AG8_2
  AG6_2[3] = AG9_2
  AG6_2[4] = AG10_2
  AG6_2[5] = AG11_2
  AG6_2[6] = AG12_2
  AG7_2 = math
  AG7_2 = AG7_2.random
  AG8_2 = 1
  AG9_2 = #AG6_2
  AG7_2 = AG7_2(AG8_2, AG9_2)
  AG7_2 = AG6_2[AG7_2]
  AG8_2 = {}
  AG9_2 = AG15_1
  AG10_2 = 8
  AG9_2 = AG9_2(AG10_2)
  AG8_2.text = AG9_2
  AG8_2.style = AG7_2
  AG9_2 = AG18_1
  AG10_2 = AG4_2.name
  AG11_2 = {}
  AG11_2.color = AG5_2
  AG11_2.plate = AG8_2
  AG9_2(AG10_2, AG11_2)
  AG9_2 = AG1_2
  AG10_2 = "ok"
  AG9_2(AG10_2)
end
AG19_1(AG20_1, AG21_1)
AG19_1 = RegisterNUICallback
AG20_1 = "close"
function AG21_1(AG0_2, AG1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::AG_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename AG0_1, AG1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local AG2_2, AG3_2
  AG2_2 = AG11_1
  AG2_2()
  AG2_2 = AG1_2
  AG3_2 = "ok"
  AG2_2(AG3_2)
end
AG19_1(AG20_1, AG21_1)
