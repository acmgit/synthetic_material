--[[  **************
      ** technic: **
      **************
]]--

local compress = {}

local freezer = {}

if(technic.register_freezer_recipe ~= nil) then

    if(minetest.registered_items["default:permafrost"]) then
        table.insert(freezer, {"default:dirt_with_snow", "default:permafrost"})
        
    end
    
    if(minetest.get_modpath("homedecor")) then
            table.insert(freezer, {"homedecor:skylight", "homedecor:skylight_frosted"})

    end -- if(minetest.get_modpath("homedecor

    if(minetest.get_modpath("caverealms")) then
        table.insert(freezer, {"caverealms:hot_cobble", "default:cobble"})
        table.insert(freezer, {"caverealms:glow_obsidian", "default:obsidian"})
        table.insert(freezer, {"caverealms:glow_obsidian_2", "caverealms:glow_obsidian"})

    end

end -- if(technic.register_freezer_recipe

if(technic.register_compressor_recipe ~= nil) then

    if(minetest.get_modpath("caverealms")) then
        table.insert(compress, {"farming:salt 5", "caverealms:salt_crystal"})
        table.insert(compress, {"default:ice", "caverealms:thin_ice 3"})
        table.insert(compress, {"caverealms:thin_ice 3", "default:ice"})
        table.insert(compress, {"default:snow 3", "caverealms:thin_ice"})
        
    end
    
end

-- ok, register all
for _, data in pairs(freezer) do
    technic.register_freezer_recipe({input = {data[1]}, output = data[2]})

end -- for _,data
                                 
for _, data in pairs(compress) do
    technic.register_compressor_recipe({input = {data[1]}, output = data[2]})
        
end

