#iframe:tick

# 清理ui物品
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{iframe_ui:1b}}}}]
kill @e[type=trident,nbt={item:{components:{"minecraft:custom_data":{iframe_ui:1b}}}}]

# ui主循环
execute as @a[tag=iframe_player] run function iframe:main

# 光标主循环
execute as @e[tag=iframe_cursor] run function iframe:cursor/main

# 重置右键检测
scoreboard players reset @a iframe_rc
scoreboard players reset @a iframe_crc
schedule function iframe:tick 1t replace