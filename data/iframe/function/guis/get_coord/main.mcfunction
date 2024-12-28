#iframe:guis/get_coord/main

# 更新触及距离
function iframe:player_space/_get
execute store result score last_slot int run data get storage iframe:io player.last_slot
execute store result score slot int run data get entity @s SelectedItemSlot
execute unless score last_slot int = slot int run function iframe:guis/get_coord/update_reach
execute store result score reach_dis int run data get storage iframe:io player.get_coord_reach_dis

# 如果没有光标就生成光标
function iframe:cursor/_find
data modify storage iframe:io input set from storage iframe:class default_cursor
execute if score res int matches 0 run function iframe:cursor/_new
# 刷新光标死亡时间
execute as @e[tag=result,limit=1] run function iframe:cursor/_refresh_time
# 光标坐标同步
execute at @s anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function iframe:guis/get_coord/coord_sync

data modify storage iframe:io inv set from entity @s Inventory
data modify storage iframe:io selecteditem set value {}
data modify storage iframe:io selecteditem set from entity @s SelectedItem

scoreboard players set update_gui int 0

# 右键直接输出坐标，F键取整输出坐标，Q键取消
execute if data storage iframe:io inv[{Slot:-106b}].components."minecraft:custom_data"{iframe:"get_coord_button"} run function iframe:guis/get_coord/f_output
execute unless data storage iframe:io inv[].components."minecraft:custom_data"{iframe:"get_coord_button"} run function iframe:gui_stack/_pop
execute unless data storage iframe:io selecteditem.components."minecraft:custom_data"{iframe:"get_coord_button"} run scoreboard players set update_gui int 1
execute if data storage iframe:io selecteditem.components."minecraft:custom_data"{iframe:"get_coord_button"} if score @s iframe_rc matches 1.. run function iframe:guis/get_coord/rc_output

execute if score update_gui int matches 1 run function iframe:guis/get_coord/items