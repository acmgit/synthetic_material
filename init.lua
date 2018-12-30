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
    
if (minetest.get_modpath("basic_materials")) then
    minetest.register_craft({
	output = "bucket:bucket_empty",
	recipe = {
                {"basic_materials:plastic_sheet", "", "basic_materials:plastic_sheet"},
                {"", "basic_materials:plastic_sheet", ""},
            }
    })

end -- if(minetest.get_modpath("basic_materials
