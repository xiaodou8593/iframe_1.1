#iframe:test/raycast/main
# 测试主程序

schedule function iframe:test/raycast/main 1t replace

scoreboard players operation res int = @a[tag=iframe_test_ray,limit=1] iframe_ray_res

# 更新发光状态
execute store result storage iframe:io temp byte 1 run scoreboard players get res int
data modify entity @e[tag=iframe_test_box,limit=1] Glowing set from storage iframe:io temp

# 提前返回
execute if score res int matches 0 run return fail

# 视线入点
execute as @a[tag=iframe_test_ray,limit=1] run function iframe:ray/_get_res
scoreboard players operation x int = iframe_ray_ix int
scoreboard players operation y int = iframe_ray_iy int
scoreboard players operation z int = iframe_ray_iz int
execute as @e[tag=math_marker,limit=1] run function math:_topos
data modify storage math:io render_command set from storage math:class particle_commands.red_dust_mid
execute as @e[tag=math_marker,limit=1] at @s run function math:_render