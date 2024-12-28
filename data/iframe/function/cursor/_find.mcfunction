#iframe:cursor/_find
# 查找光标
# 以玩家为执行者
# 输出是否找到<res,int>

tag @e[tag=result] remove result
scoreboard players set res int 0
scoreboard players operation tempid int = @s iframe_id
execute as @e[tag=iframe_cursor] if score @s int = tempid int store result score res int run tag @s add result