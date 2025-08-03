#iframe:test/voxel/main
# iframe:test/voxel/_start异步调用

execute if score test int matches 0 run return fail
schedule function iframe:test/voxel/main 1t

# 传入视线
execute as @e[tag=test,limit=1] at @s anchored eyes positioned ^ ^ ^ as @e[tag=math_marker,limit=1] run function iframe:ray/_anchor_to

# 调用视线追踪
execute as @e[tag=math_marker,limit=1] run function iframe:ray/_if_solid
execute if score iframe_ray_res int matches 0 run return fail

# 绘制入点
scoreboard players operation x int = iframe_ray_ix int
scoreboard players operation y int = iframe_ray_iy int
scoreboard players operation z int = iframe_ray_iz int
execute as @e[tag=math_marker,limit=1] run function math:_topos
data modify storage math:io render_command set from storage math:class particle_commands.flame
execute as @e[tag=math_marker,limit=1] at @s run function math:_render

# 绘制选择方块
function iframe:solid/select/_to_box
function iframe:test/_box_to_math_box
scoreboard players set render_density int 50
data modify storage math:io render_command set from storage math:class particle_commands.red_dust
execute as @e[tag=math_marker,limit=1] run function math:box/_render