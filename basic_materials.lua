--[[  **********************
      ** basic_materials: **
      **********************
]]--

minetest.register_craft({
    output = "bucket:bucket_empty",
	recipe = {
                {"basic_materials:plastic_sheet", "", "basic_materials:plastic_sheet"},
                {"", "basic_materials:plastic_sheet", ""},
    }
})


