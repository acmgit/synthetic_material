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
	output = "default:snowblock",
	recipe = {
		{"default:mese_crystal_fragment", "bucket:bucket_water", "default:mese_crystal_fragment"}
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})
