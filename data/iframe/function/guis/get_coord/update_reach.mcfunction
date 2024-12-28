#iframe:guis/get_coord/update_reach

# 滚动了多少槽位
scoreboard players operation delta_slot int = slot int
scoreboard players operation delta_slot int -= last_slot int
scoreboard players operation delta_slot int %= 9 int
execute if score delta_slot int matches 5.. run scoreboard players remove delta_slot int 9
scoreboard players operation delta_slot int *= -1 int

# 更新触及距离
execute store result score reach_min int run data get storage iframe:io player.get_coord_reach_min
execute store result score reach_max int run data get storage iframe:io player.get_coord_reach_max
execute store result score reach_dis int run data get storage iframe:io player.get_coord_reach_dis
execute store result score reach_rate int run data get storage iframe:io player.get_coord_reach_rate
scoreboard players operation delta_slot int *= reach_rate int
scoreboard players operation reach_dis int += delta_slot int
scoreboard players operation reach_dis int -= reach_min int
scoreboard players operation reach_max int -= reach_min int
scoreboard players operation reach_dis int < reach_max int
scoreboard players operation reach_dis int > 0 int
execute store result storage iframe:io player.get_coord_reach_dis int 1 run scoreboard players operation reach_dis int += reach_min int

# 更新当前槽位
execute store result storage iframe:io player.last_slot int 1 run scoreboard players get slot int
function iframe:player_space/_store