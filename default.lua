--[[  **************
      ** default: **
      **************
]]--

local search_nearby_nodes = function(pos, node)
		if minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z+1}).name == node then return true end
		return false
        
	end -- search_nearby_nodes = function

default.cool_lava = function(pos, node)
    if node.name == "default:lava_source" then
        if(search_nearby_nodes(pos,"default:water_source")) then                    -- default:lava_source - default:water_source = default:obsidian
            minetest.set_node(pos, {name="default:obsidian"})

        elseif(search_nearby_nodes(pos,"default:river_water_source")) then          -- default:lava_source - default:river_water_source  = default:desert_stone
            minetest.set_node(pos, {name="default:desert_stone"})
            
        elseif(search_nearby_nodes(pos,"default:water_flowing")) then               -- default:lava_source - default:water_flowing = default:cobble
            minetest.set_node(pos, {name="default:cobble"})
              
        elseif(search_nearby_nodes(pos,"default:river_water_flowing")) then         -- default:lava_source - default:river_water_flowing = default:desert_cobble
            minetest.set_node(pos, {name="default:desert_cobble"})
                            
        end
              
    else -- Lava flowing
        if(search_nearby_nodes(pos,"default:water_source")) then                    -- default:lava_flowing - default:water_source = default:stone
            minetest.set_node(pos, {name="default:stone"})
          
        elseif(search_nearby_nodes(pos,"default:water_flowing")) then               -- default:lava_flowing - default:water_flowing = default:sand
            minetest.set_node(pos, {name="default:sand"})
              
        elseif(search_nearby_nodes(pos,"default:river_water_source")) then          -- default:lava_flowing - default:river_water_source = default:desert_stone
            minetest.set_node(pos, {name="default:desert_stone"})
              
        elseif(search_nearby_nodes(pos,"default:river_water_flowing")) then         -- default:lava_flowing - default:river_water_flowing = default:silver_sand
            minetest.set_node(pos, {name="default:silver_sand"})
              
        end
              
    end -- if(node.name ==
              
end -- default.cool_lava =

minetest.register_craft({
	output = "default:clay_lump 4",
	recipe = {
		{"default:dirt", "group:sand", "default:dirt"},
		{"group:sand", "bucket:bucket_water", "group:sand"},
		{"default:dirt", "group:sand", "default:dirt"}
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "default:clay_lump 4",
	recipe = {
		{"group:sand", "default:dirt", "group:sand"},
		{"default:dirt", "bucket:bucket_water", "default:dirt"},
		{"group:sand", "default:dirt", "group:sand"}
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "default:clay_lump 4",
	recipe = {
		{"default:dirt", "group:sand", "default:dirt"},
		{"group:sand", "bucket:bucket_river_water", "group:sand"},
		{"default:dirt", "group:sand", "default:dirt"}
	},
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "default:clay_lump 4",
	recipe = {
		{"group:sand", "default:dirt", "group:sand"},
		{"default:dirt", "bucket:bucket_river_water", "default:dirt"},
		{"group:sand", "default:dirt", "group:sand"}
	},
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "default:coral_brown",
	recipe = {
		{"default:coral_skeleton", "dye:brown"}
	}
})

minetest.register_craft({
	output = "default:coral_orange",
	recipe = {
		{"default:coral_skeleton", "dye:orange"}
	}
})

minetest.register_craft({
    output = "default:dirt_with_dry_grass",
	recipe = {
		{"default:dry_shrub", "default:dirt", ""}
	}
})

minetest.register_craft({
	output = "default:dirt_with_rainforest_litter",
	recipe = {
		{"default:jungleleaves", "default:dirt", ""}
	}
})

minetest.register_craft({
	output = "default:dirt_with_snow",
	recipe = {
		{"default:snow", "default:dirt", ""}
	}
})

minetest.register_craft({
	output = "default:snow",
	recipe = {
		{"default:mese_crystal_fragment", "", "default:mese_crystal_fragment"},
        {"", "bucket:bucket_water", ""},
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"},
                    {"default:mese_crystal_fragment", "default:mese_crystal_fragment 2"},
                   }
})

minetest.register_craft({
	output = "default:snow",
	recipe = {
		{"default:mese_crystal_fragment", "", "default:mese_crystal_fragment"},
        {"", "bucket:bucket_river_water", ""},
	},
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"},
                    {"default:mese_crystal_fragment", "default:mese_crystal_fragment 2"},
                   }
})


--[[
       *******************************
       **     Support for 5.x       **
       *******************************
]]--

if(minetest.registered_items["default:permafrost"]) then
   
   minetest.register_craft({
                                type = "cooking",
                                output = "default:dirt",
                                recipe = "default:permafrost",
                                cooktime = 8
                            }) -- minetest.register_craft
                        
    minetest.register_craft({
                                output = 'default:permafrost_with_stones 4',
                                recipe = {
                                            {'default:permafrost', 'default:permafrost', 'default:cobble'},
                                            {'default:permafrost', 'default:permafrost', ''}
                                        } -- recipe =
                            
                            }) -- minetest.register_craft
    
    minetest.register_craft({
                                output = 'default:permafrost_with_moss 4',
                                recipe = {
                                            {'default:permafrost', 'default:permafrost', 'default:marram_grass_1'},
                                            {'default:permafrost', 'default:permafrost', ''}
                                        } -- recipe =
                            
                            }) -- minetest.register_craft                          
  
end -- if(minetest.registered_nodes
