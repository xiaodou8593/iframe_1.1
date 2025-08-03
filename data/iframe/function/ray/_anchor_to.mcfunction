#iframe:ray/_anchor_to
# 执行方位转iframe_ray
# 输入执行坐标，执行朝向
# 输出_this.start_point
# 输出_this.kvec
# 需要传入世界实体为执行者

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x_start int run data get storage math:io xyz[0] 10000
execute store result score y_start int run data get storage math:io xyz[1] 10000
execute store result score z_start int run data get storage math:io xyz[2] 10000

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score kvec_x int run data get storage math:io xyz[0] 10000
execute store result score kvec_y int run data get storage math:io xyz[1] 10000
execute store result score kvec_z int run data get storage math:io xyz[2] 10000