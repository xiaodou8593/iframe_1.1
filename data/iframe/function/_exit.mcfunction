#iframe:_exit
# 退出iframe gui
# 以玩家为执行者

data modify storage iframe:io free_addr prepend value 0
execute store result storage iframe:io free_addr[0] int 1 run scoreboard players get @s iframe_id
tag @s remove iframe_player
clear @s