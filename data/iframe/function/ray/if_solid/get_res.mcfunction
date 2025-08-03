#iframe:ray/if_solid/get_res
# iframe:ray/if_solid/$(x)_$(y)_$(z)/init调用
# iframe:ray/if_solid/$(x)_$(y)_$(z)/loop_x调用
# iframe:ray/if_solid/$(x)_$(y)_$(z)/loop_y调用
# iframe:ray/if_solid/$(x)_$(y)_$(z)/loop_z调用

# 确认相交发生
scoreboard players set iframe_ray_res int 1

# 生成iframe_box临时对象
tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score solid_x int store result score x_min int run data get storage math:io xyz[0]
execute store result score solid_y int store result score y_min int run data get storage math:io xyz[1]
execute store result score solid_z int store result score z_min int run data get storage math:io xyz[2]
scoreboard players operation x_min int *= 10000 int
scoreboard players operation y_min int *= 10000 int
scoreboard players operation z_min int *= 10000 int
scoreboard players operation x_max int = x_min int
scoreboard players operation y_max int = y_min int
scoreboard players operation z_max int = z_min int
scoreboard players add x_max int 10000
scoreboard players add y_max int 10000
scoreboard players add z_max int 10000

# 调用相交计算
function iframe:ray/_if_box

# 获取计算结果
scoreboard players operation iframe_ray_min int = sstemp_min int

scoreboard players operation iframe_ray_ix int = sstempf0 int
scoreboard players operation iframe_ray_iy int = sstempf1 int
scoreboard players operation iframe_ray_iz int = sstempf2 int
scoreboard players operation iframe_ray_ix int *= sstemp_min int
scoreboard players operation iframe_ray_iy int *= sstemp_min int
scoreboard players operation iframe_ray_iz int *= sstemp_min int
scoreboard players operation iframe_ray_ix int /= 100 int
scoreboard players operation iframe_ray_iy int /= 100 int
scoreboard players operation iframe_ray_iz int /= 100 int
scoreboard players operation iframe_ray_ix int += x_start int
scoreboard players operation iframe_ray_iy int += y_start int
scoreboard players operation iframe_ray_iz int += z_start int