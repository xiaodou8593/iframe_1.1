#iframe:ray/_if_solid
# 计算视线与实心方块相交
# 输入_this.start_point
# 输入_this.kvec
# 输出_this.target
# 输出{<solid_x,int,1>, <solid_y,int,1>, <solid_z,int,1>}表示相交方块坐标
# 需要传入世界实体为执行者

# 计算偏移方向
scoreboard players set sstemp_sx int 1
scoreboard players set sstemp_sy int 1
scoreboard players set sstemp_sz int 1
execute if score kvec_x int matches ..-1 run scoreboard players set sstemp_sx int -1
execute if score kvec_y int matches ..-1 run scoreboard players set sstemp_sy int -1
execute if score kvec_z int matches ..-1 run scoreboard players set sstemp_sz int -1

# 计算xyz方向单位长度
scoreboard players set sstemp_dx int 100000000
scoreboard players set sstemp_dy int 100000000
scoreboard players set sstemp_dz int 100000000
scoreboard players operation sstemp_dx int *= sstemp_sx int
scoreboard players operation sstemp_dy int *= sstemp_sy int
scoreboard players operation sstemp_dz int *= sstemp_sz int
scoreboard players operation sstemp_dx int /= kvec_x int
scoreboard players operation sstemp_dy int /= kvec_y int
scoreboard players operation sstemp_dz int /= kvec_z int

# 计算xyz方向初始步进距离
execute store result storage math:io xyz[0] double 0.0001 run scoreboard players operation sstemp_lx int = x_start int
execute store result storage math:io xyz[1] double 0.0001 run scoreboard players operation sstemp_ly int = y_start int
execute store result storage math:io xyz[2] double 0.0001 run scoreboard players operation sstemp_lz int = z_start int
data modify entity @s Pos set from storage math:io xyz
scoreboard players operation sstemp_lx int %= 10000 int
scoreboard players operation sstemp_ly int %= 10000 int
scoreboard players operation sstemp_lz int %= 10000 int
scoreboard players operation sstemp_lx int *= -1 int
scoreboard players operation sstemp_ly int *= -1 int
scoreboard players operation sstemp_lz int *= -1 int
execute if score kvec_x int matches 1.. run scoreboard players add sstemp_lx int 10000
execute if score kvec_y int matches 1.. run scoreboard players add sstemp_ly int 10000
execute if score kvec_z int matches 1.. run scoreboard players add sstemp_lz int 10000
scoreboard players operation sstemp_lx int *= 10000 int
scoreboard players operation sstemp_ly int *= 10000 int
scoreboard players operation sstemp_lz int *= 10000 int
scoreboard players operation sstemp_lx int /= kvec_x int
scoreboard players operation sstemp_ly int /= kvec_y int
scoreboard players operation sstemp_lz int /= kvec_z int
execute if score kvec_x int matches 0 run scoreboard players set sstemp_lx int 2147483647
execute if score kvec_y int matches 0 run scoreboard players set sstemp_ly int 2147483647
execute if score kvec_z int matches 0 run scoreboard players set sstemp_lz int 2147483647

scoreboard players set iframe_ray_res int 0

# 选择分支进入递归
execute store result storage iframe:io sx int 1 run scoreboard players get sstemp_sx int
execute store result storage iframe:io sy int 1 run scoreboard players get sstemp_sy int
execute store result storage iframe:io sz int 1 run scoreboard players get sstemp_sz int
scoreboard players operation sstemp_max int = iframe_ray_r int
scoreboard players operation sstemp_max int *= 10000 int
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function iframe:ray/if_solid/search with storage iframe:io {}

# 区块安全
tp @s 0 0 0