#iframe:player_space/_store
# 储存玩家空间
# 以玩家为执行者
# 输入玩家空间storage iframe:io player

execute store result storage iframe:io index int 1 run scoreboard players get @s iframe_id
function iframe:player_space/macro_store with storage iframe:io {}