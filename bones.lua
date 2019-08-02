--[[  ************
      ** bones: **
      ************
]]--


minetest.register_craft({
	output = "bones:bones 3",
	recipe = {
		{"default:clay_lump","default:clay_lump","default:clay_lump"},
		{"","default:clay_lump",""},
		{"default:clay_lump","default:clay_lump","default:clay_lump"}
	}
})
