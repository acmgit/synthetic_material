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
	output = "default:snowblock",
	recipe = {
		{"default:mese_crystal_fragment", "bucket:bucket_water", "default:mese_crystal_fragment"}
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "default:snowblock",
	recipe = {
		{"default:mese_crystal_fragment", "bucket:bucket_river_water", "default:mese_crystal_fragment"}
	},
	replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"}}
})

minetest.register_craft({
	output = "bucket:bucket_river_water",
	recipe = {
		{"bucket:bucket_water", "default:mese_crystal_fragment"}
	},
})

minetest.register_craft({
    output = "default:dirt_with_dry_grass",
	recipe = {
		{"default:dry_shrub", "default:dirt", ""}
	}
})

minetest.register_craft({
	output = "default:dirt_with_snow",
	recipe = {
		{"default:snow", "default:dirt", ""}
	}
})

minetest.register_craft({
	output = "default:dirt_with_rainforest_litter",
	recipe = {
		{"default:jungleleaves", "default:dirt", ""}
	}
})

minetest.register_craft({
	output = "dye:cyan 2",
	recipe = {
		{"default:coral_cyan"}
	}
})

minetest.register_craft({
	output = "dye:magenta 2",
	recipe = {
		{"default:coral_pink"}
	}
})

minetest.register_craft({
	output = "dye:dark_green 2",
	recipe = {
		{"default:coral_green"}
	}
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

if(minetest.get_modpath("homedecor")) then
    
    minetest.register_craft({
        output = "default:snowblock",
        recipe = {
            {"", "bucket:bucket_water", ""},
            {"bucket:bucket_water", "homedecor:refrigerator_steel", "bucket:bucket_water"},
            {"", "bucket:bucket_water", ""}
        },
        replacements = {{"bucket:bucket_water", "bucket:bucket_empty"},
                {"bucket:bucket_water", "bucket:bucket_empty"},
                {"bucket:bucket_water", "bucket:bucket_empty"},
                {"bucket:bucket_water", "bucket:bucket_empty"},
                {"homedecor:refrigerator_steel", "homedecor:refrigerator_steel"}}
    }) -- default:snowblock

    minetest.register_craft({
        output = "default:snowblock",
        recipe = {
            {"", "bucket:bucket_river_water", ""},
            {"bucket:bucket_river_water", "homedecor:refrigerator_steel", "bucket:bucket_river_water"},
            {"", "bucket:bucket_river_water", ""}
        },
        replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"homedecor:refrigerator_steel", "homedecor:refrigerator_steel"}}
    })-- default:snowblock

    minetest.register_craft({
        output = "default:snowblock",
        recipe = {
            {"", "bucket:bucket_water", ""},
            {"bucket:bucket_water", "homedecor:refrigerator_white", "bucket:bucket_water"},
            {"", "bucket:bucket_water", ""}
        },
        replacements = {{"bucket:bucket_water", "bucket:bucket_empty"},
                {"bucket:bucket_water", "bucket:bucket_empty"},
                {"bucket:bucket_water", "bucket:bucket_empty"},
                {"bucket:bucket_water", "bucket:bucket_empty"},
                {"homedecor:refrigerator_white", "homedecor:refrigerator_white"}}
    })-- default:snowblock
    

    minetest.register_craft({
        output = "default:snowblock",
        recipe = {
            {"", "bucket:bucket_river_water", ""},
            {"bucket:bucket_river_water", "homedecor:refrigerator_white", "bucket:bucket_river_water"},
            {"", "bucket:bucket_river_water", ""}
        },
        replacements = {{"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"bucket:bucket_river_water", "bucket:bucket_empty"},
                {"homedecor:refrigerator_white", "homedecor:refrigerator_white"}}
    })-- default:snowblock

end -- if(get_modpath("homedecor

minetest.register_craft({
	output = "bones:bones 3",
	recipe = {
		{"default:clay_lump","default:clay_lump","default:clay_lump"},
		{"","default:clay_lump",""},
		{"default:clay_lump","default:clay_lump","default:clay_lump"}
	}
})

if (minetest.get_modpath("basic_materials")) then
    minetest.register_craft({
	output = "bucket:bucket_empty",
	recipe = {
                {"basic_materials:plastic_sheet", "", "basic_materials:plastic_sheet"},
                {"", "basic_materials:plastic_sheet", ""},
            }
    })

end -- if(minetest.get_modpath("basic_materials
