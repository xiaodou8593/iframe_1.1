#iframe:_hotbar
# 保存当前快捷栏
# 以玩家为执行者

data modify storage iframe:io inv set from entity @s Inventory

function iframe:player_space/_get
data modify storage iframe:io player.cache_hotbar set value []
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:0b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:1b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:2b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:3b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:4b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:5b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:6b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:7b}]
data modify storage iframe:io player.cache_hotbar append from storage iframe:io inv[{Slot:8b}]
function iframe:player_space/_store