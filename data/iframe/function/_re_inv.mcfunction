#iframe:_re_inv
# 返还暂存的所有物品
# 以玩家为执行者

clear @s
function iframe:player_space/_get
data modify storage iframe:io inv set from storage iframe:io player.cache_inv
execute if data storage iframe:io inv[0] run function iframe:inv_loop