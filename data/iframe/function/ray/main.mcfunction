#iframe:ray/main
# iframe:tick调用

# 时钟过滤
scoreboard players operation temp int = iframe_time int
scoreboard players operation temp int %= @s iframe_ray_per
execute unless score temp int = @s iframe_ray_phi run return fail

# 视线参数临时化
execute anchored eyes positioned ^ ^ ^ as 0-0-0-0-0 run function iframe:ray/get_coord

# 提前返回状态
scoreboard players set temp_res int 1
execute if score @s iframe_ray_ztest matches 1 run scoreboard players set temp_res int -1
# 暂存返回值
scoreboard players set temp_min int 2147483647

# 根据不同卦限选择分支
scoreboard players set temp_branch int 0
execute if score kvec_x int matches 0.. run scoreboard players add temp_branch int 1
execute if score kvec_y int matches 0.. run scoreboard players add temp_branch int 2
execute if score kvec_z int matches 0.. run scoreboard players add temp_branch int 4
execute store result storage iframe:io branch int 1 run scoreboard players get temp_branch int
function iframe:ray/main_branch with storage iframe:io {}

# 输出运算结果
scoreboard players set @s iframe_ray_res 0
execute if score temp_res int matches 0 run scoreboard players set @s iframe_ray_res 1
execute if score temp_res int matches ..-2 run scoreboard players set @s iframe_ray_res 1
scoreboard players operation @s iframe_ray_ptr = temp_ptr int
scoreboard players operation @s iframe_ray_min = temp_min int
scoreboard players operation @s iframe_ray_ix = temp_ix int
scoreboard players operation @s iframe_ray_iy = temp_iy int
scoreboard players operation @s iframe_ray_iz = temp_iz int