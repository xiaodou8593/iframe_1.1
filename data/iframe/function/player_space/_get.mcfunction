#iframe:player_space/_get
# 获取玩家空间
# 以玩家为执行者
# 输出玩家空间storage iframe:io player

execute store result storage iframe:io index int 1 run scoreboard players get @s iframe_id
function iframe:player_space/macro_get with storage iframe:io {}