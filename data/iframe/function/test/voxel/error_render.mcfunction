#iframe:test/voxel/error_render

execute at @s as @e[tag=math_marker,limit=1] run function math:line/_anchor_to
scoreboard players operation line_dx int *= 10 int
scoreboard players operation line_dy int *= 10 int
scoreboard players operation line_dz int *= 10 int

scoreboard players set render_density int 50
data modify storage math:io render_command set from storage math:class particle_commands.red_dust
execute as @e[tag=math_marker,limit=1] run function math:line/_render

scoreboard players operation inp int = test int
function math:kvec/_lambda
scoreboard players operation x int = x_start int
scoreboard players operation y int = y_start int
scoreboard players operation z int = z_start int
scoreboard players operation x int += fvec_x int
scoreboard players operation y int += fvec_y int
scoreboard players operation z int += fvec_z int
execute as @e[tag=math_marker,limit=1] run function math:_topos
data modify storage math:io render_command set from storage math:class particle_commands.flame
execute as @e[tag=math_marker,limit=1] at @s run function math:_render