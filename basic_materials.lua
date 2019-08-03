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


minetest.register_craft({
    output = "basic_materials:steel_bar 6",
	recipe = {
                {"", "default:steel_ingot", ""},
                {"default:steel_ingot", "", "default:steel_ingot"},
    }
})
