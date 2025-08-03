#iframe:_exit_inv
# 退出iframe gui，并返还暂存的物品栏
# 以玩家为执行者

clear @s
function iframe:player_space/_get
data modify storage iframe:io inv set from storage iframe:io player.cache_inv
execute if data storage iframe:io inv[0] run function iframe:inv_loop

data modify storage iframe:io free_addr prepend value 0
execute store result storage iframe:io free_addr[0] int 1 run scoreboard players get @s iframe_id
tag @s remove iframe_player