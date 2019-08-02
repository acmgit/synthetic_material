--[[  ****************
      ** homedecor: **
      ****************
]]--

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
