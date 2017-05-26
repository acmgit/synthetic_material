minetest.register_craft({
	output = "default:clay_lump",
	recipe = {
		{"default:dirt", "group:sand", "default:dirt"},
		{"group:sand", "bucket:bucket_water", "group:sand"},
		{"default:dirt", "group:sand", "default:dirt"}
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})
