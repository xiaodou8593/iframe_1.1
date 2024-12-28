#iframe:guis/box_selecting/main

# 碰撞箱检测

# 物品刷新检测
data modify storage iframe:io inv set from entity @s Inventory

scoreboard players set update_gui int 0
execute if data storage iframe:io inv[0] run scoreboard players set update_gui int 1
execute if score update_gui int matches 1 run function iframe:guis/box_selecting/items