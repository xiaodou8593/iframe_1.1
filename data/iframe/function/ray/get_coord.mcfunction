#iframe:ray/get_coord
# iframe:ray/main调用

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x_start int run data get storage math:io xyz[0] 10000
execute store result score y_start int run data get storage math:io xyz[1] 10000
execute store result score z_start int run data get storage math:io xyz[2] 10000

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
data modify storage math:io xyz set from entity @s Pos
execute store result score kvec_x int store result score x_end int run data get storage math:io xyz[0] 10000
execute store result score kvec_y int store result score y_end int run data get storage math:io xyz[1] 10000
execute store result score kvec_z int store result score z_end int run data get storage math:io xyz[2] 10000

scoreboard players operation x_end int *= iframe_ray_r int
scoreboard players operation y_end int *= iframe_ray_r int
scoreboard players operation z_end int *= iframe_ray_r int
scoreboard players operation x_end int += x_start int
scoreboard players operation y_end int += y_start int
scoreboard players operation z_end int += z_start int