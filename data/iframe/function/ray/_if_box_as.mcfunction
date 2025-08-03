#iframe:ray/_if_box_as
# 计算视线与碰撞箱相交
# 输入_this.start_point
# 输入_this.kvec
# 以碰撞箱实体为执行者
# 输出<res,int>表示是否相交
# 输出<sstemp_min,int,1k>表示相交入点
# 输出<sstemp_max,int,1k>表示相交出点

# 单位向量
scoreboard players operation sstempf0 int = kvec_x int
scoreboard players operation sstempf1 int = kvec_y int
scoreboard players operation sstempf2 int = kvec_z int
scoreboard players operation sstempf0 int /= 10 int
scoreboard players operation sstempf1 int /= 10 int
scoreboard players operation sstempf2 int /= 10 int

# x轴范围
scoreboard players operation sstemp_min int = @s x_min
scoreboard players operation sstemp_max int = @s x_max
scoreboard players operation sstemp_min int -= x_start int
scoreboard players operation sstemp_max int -= x_start int
scoreboard players operation sstemp_min int *= 100 int
scoreboard players operation sstemp_max int *= 100 int
scoreboard players operation sstemp_min int /= sstempf0 int
scoreboard players operation sstemp_max int /= sstempf0 int
execute if score sstemp_min int > sstemp_max int run scoreboard players operation sstemp_min int >< sstemp_max int
execute if score sstempf0 int matches 0 run function iframe:ray/if_box/x_range

# y轴范围
scoreboard players operation sstemp0 int = @s y_min
scoreboard players operation sstemp1 int = @s y_max
scoreboard players operation sstemp0 int -= y_start int
scoreboard players operation sstemp1 int -= y_start int
scoreboard players operation sstemp0 int *= 100 int
scoreboard players operation sstemp1 int *= 100 int
scoreboard players operation sstemp0 int /= sstempf1 int
scoreboard players operation sstemp1 int /= sstempf1 int
execute if score sstemp0 int > sstemp1 int run scoreboard players operation sstemp0 int >< sstemp1 int
execute if score sstempf1 int matches 0 run function iframe:ray/if_box/y_range
scoreboard players operation sstemp_min int > sstemp0 int
scoreboard players operation sstemp_max int < sstemp1 int

# z轴范围
scoreboard players operation sstemp2 int = @s z_min
scoreboard players operation sstemp3 int = @s z_max
scoreboard players operation sstemp2 int -= z_start int
scoreboard players operation sstemp3 int -= z_start int
scoreboard players operation sstemp2 int *= 100 int
scoreboard players operation sstemp3 int *= 100 int
scoreboard players operation sstemp2 int /= sstempf2 int
scoreboard players operation sstemp3 int /= sstempf2 int
execute if score sstemp2 int > sstemp3 int run scoreboard players operation sstemp2 int >< sstemp3 int
execute if score sstempf2 int matches 0 run function iframe:ray/if_box/z_range
scoreboard players operation sstemp_min int > sstemp2 int
scoreboard players operation sstemp_max int < sstemp3 int

execute store result score res int if score sstemp_min int <= sstemp_max int
execute if score sstemp_min int matches ..0 run scoreboard players set res int 0