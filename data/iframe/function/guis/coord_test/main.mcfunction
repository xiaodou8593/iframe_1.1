#iframe:guis/coord_test/main

data modify storage iframe:io inv set from entity @s Inventory

scoreboard players set update_gui int 0
execute unless data storage iframe:io inv[{Slot:0b}].components."minecraft:custom_data"{button:0b} run function iframe:guis/coord_test/place_glass
execute if score update_gui int matches 1 run function iframe:guis/coord_test/items