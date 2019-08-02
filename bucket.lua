--[[  *************
      ** bucket: **
      *************
]]--

minetest.register_craft({
	output = "bucket:bucket_river_water",
	recipe = {
                {"bucket:bucket_water", "default:mese_crystal_fragment"},
              },
	replacements = {{"default:mese_crystal_fragment", "default:mese_crystal_fragment"}}
})
