--[[  *****************
      ** caverealms: **
      *****************
]]--

minetest.register_craft({
    output = "caverealms:stone_with_moss",
    recipe = {
        {"default:aspen_leaves","default:cobble",""},
    }
})

minetest.register_craft({
    output = "caverealms:stone_with_algae",
    recipe = {
        {"default:pine_needles","default:cobble",""},
    }
})

minetest.register_craft({
    output = "caverealms:stone_with_lichen",
    recipe = {
        {"default:acacia_leaves","default:cobble",""},
    }
})

minetest.register_craft({
    output = "caverealms:glow_obsidian",
    recipe = {
        {"default:torch","default:obsidian","default:torch"},
    }
})

minetest.register_craft({
    output = "caverealms:stone_with_salt 4",
    recipe = {
        {"default:stone","caverealms:salt_crystal",""},
    }
})

minetest.register_craft({
    type = "cooking",
    output = "caverealms:hot_cobble",
    recipe = "default:sandstone",
    cooktime = 10,
})

minetest.register_craft({
    type = "cooking",
    output = "caverealms:glow_obsidian",
    recipe = "default:desert_sandstone",
    cooktime = 10,
})

minetest.register_craft({
    type = "cooking",
    output = "caverealms:glow_mese",
    recipe = "default:silver_sandstone",
    cooktime = 10,
})
    
minetest.register_craft({
    type = "cooking",
    output = "caverealms:glow_obsidian_2",
    recipe = "caverealms:glow_obsidian",
    cooktime = 15,
})
