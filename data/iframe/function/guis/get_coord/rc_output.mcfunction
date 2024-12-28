#iframe:guis/get_coord/rc_output

function iframe:player_space/_get

# 返回坐标
execute as @e[tag=result,limit=1] run function iframe:cursor/_toxyz
data modify storage iframe:io player.coord_result append from storage iframe:io xyz
#tellraw @a ["result: ", {"nbt":"player.coord_result","storage":"iframe:io"}]

# 计算还剩多少坐标参数
execute store result score loop int run data get storage iframe:io player.coord_expect
execute store result storage iframe:io player.coord_expect int 1 run scoreboard players remove loop int 1

function iframe:player_space/_store

data modify storage iframe:io input set value "iframe:guis/get_coord"
execute if score loop int matches 1.. run function iframe:_enter
execute if score loop int matches 1.. run return 0

function iframe:gui_stack/_pop