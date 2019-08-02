--[[  **************
      ** drawers: **
      **************
]]--

local material = { "wood",
                   "junglewood",
                   "pine_wood",
                   "acacia_wood",
                   "aspen_wood",
                }

for _,mat in pairs(material) do

    minetest.register_craft({
        output = "drawers:" .. mat .. "2",
        type = "shapeless",
        recipe = {"drawers:" .. mat .. "1","drawers:" .. mat .. "1"},
    })

    minetest.register_craft({
        output = "drawers:" .. mat .. "4",
        recipe = {
                    {"drawers:" .. mat .. "1","drawers:" .. mat .. "1",""},
                    {"drawers:" .. mat .. "1","drawers:" .. mat .. "1",""}
                 }
    })

    minetest.register_craft({
        output = "drawers:" .. mat .. "4",
        type = "shapeless",
        recipe = {"drawers:" .. mat .. "2","drawers:" .. mat .. "2"},
    })

    minetest.register_craft({
        output = "drawers:" .. mat .. "1 2",
        type = "shapeless",
        recipe = {"drawers:" .. mat .. "2"},
    })

    minetest.register_craft({
        output = "drawers:" .. mat .. "1 4",
        type = "shapeless",
        recipe = {"drawers:" .. mat .. "4"},
    })

end
