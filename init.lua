--[[
      ********************************************
      **          Synthetic Materials           **
      ********************************************

    A mod to define missing recipes for mintest mods.
 
    (?) by A.C.M.
    License: GPL 3.0

]]--
local version = 1.0
local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

local mods = {  "basic_materials",
                "bones",
                "bucket",
                "caverealms",
                "default",
                "dye",
                "farming",
                "homedecor",
                "technic",
            }

for _, current_mod in pairs(mods) do
    if(minetest.get_modpath(current_mod)) then
        --print(modpath .. "/" .. current_mod)
        dofile(modpath .. "/" .. current_mod .. ".lua")
        
    end -- if(minetest.get_modpath

end -- for _,current_mod 

-- print("info", "[" .. modname .. "] Version " .. version .. " loaded.")
minetest.log("info", "[" .. modname .. "] Version " .. version .. " loaded.")
