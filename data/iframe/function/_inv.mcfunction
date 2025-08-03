#iframe:_inv
# 保存当前物品栏
# 以玩家为执行者

function iframe:player_space/_get
data modify storage iframe:io player.cache_inv set from entity @s Inventory
function iframe:player_space/_store