#iframe:_enter
# 进入iframe gui
# 以玩家为执行者
# 输入gui指针storage iframe:io input

execute unless entity @s[tag=iframe_player] run function iframe:init_player
function iframe:player_space/_get
data modify storage iframe:io player.gui_using set from storage iframe:io input
function iframe:player_space/_store

tag @s add iframe_update