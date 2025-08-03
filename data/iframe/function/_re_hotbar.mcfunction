#iframe:_re_hotbar
# 返还暂存的快捷栏
# 以玩家为执行者

item replace entity @s container.0 with air
item replace entity @s container.1 with air
item replace entity @s container.2 with air
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air

function iframe:player_space/_get
data modify storage iframe:io inv set from storage iframe:io player.cache_hotbar
execute if data storage iframe:io inv[0] run function iframe:inv_loop