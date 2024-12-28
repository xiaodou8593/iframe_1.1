#iframe:cursor/_new
# 生成光标
# 以玩家为执行者
# 输入storage iframe:io input

scoreboard players operation tempid int = @s iframe_id
tag @e[tag=result] remove result
summon area_effect_cloud 0 0 0 {Tags:["iframe_cursor","result","upd_aec"],CustomName:'{"text":"iframe_cursor"}',Duration:2147483647,Passengers:[{id:"minecraft:item_display",CustomName:'{"text":"iframe_cursor_display"}',Tags:["iframe_cursor_display"]}]}
execute as @e[tag=result,limit=1] run function iframe:cursor/set