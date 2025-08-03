#iframe:test/voxel/error_case

# 传入视线
execute as @e[tag=error_case,limit=1] at @s as @e[tag=math_marker,limit=1] run function iframe:ray/_anchor_to

# 调用视线追踪
scoreboard players set n int 0
scoreboard players set max int 0
execute as @e[tag=math_marker,limit=1] run function iframe:ray/_if_solid