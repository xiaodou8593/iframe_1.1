#iframe:guis/get_coord/coord_sync

# 获取方位
tp @s ~ ~ ~
data modify storage iframe:io xyz set from entity @s Pos
execute store result score x int run data get storage iframe:io xyz[0] 10000
execute store result score y int run data get storage iframe:io xyz[1] 10000
execute store result score z int run data get storage iframe:io xyz[2] 10000
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage iframe:io xyz set from entity @s Pos
execute store result score kvec_x int run data get storage iframe:io xyz[0] 10000
execute store result score kvec_y int run data get storage iframe:io xyz[1] 10000
execute store result score kvec_z int run data get storage iframe:io xyz[2] 10000

# 计算坐标
scoreboard players operation kvec_x int *= reach_dis int
scoreboard players operation kvec_y int *= reach_dis int
scoreboard players operation kvec_z int *= reach_dis int
scoreboard players operation x int += kvec_x int
scoreboard players operation y int += kvec_y int
scoreboard players operation z int += kvec_z int

execute as @e[tag=result,limit=1] run function iframe:cursor/_set_pos