#iframe:guis/coord_test/place_glass_suc

data modify entity @s Pos set from storage iframe:io player.coord_result[0]
execute at @s run setblock ~ ~ ~ glass
tp @s 0 0 0