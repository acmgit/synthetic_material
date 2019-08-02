--[[  **************
      ** farming: **
      **************
]]--


if(minetest.registered_items["farming:salt"]) then
    
    minetest.register_craft({
            output = "farming:salt",
            recipe = {
                        {"default:mese_crystal_fragment","bucket:bucket_water","default:mese_crystal_fragment"} 
            },
            replacements = {
                                {"default:mese_crystal_fragment", "default:mese_crystal_fragment 2"},
                                {"bucket:bucket_water", "bucket:bucket_empty"}
            }
    })
    
end
