#iframe:gui_stack/_pop
# gui出栈
# 以玩家为执行者

function iframe:player_space/_get
data modify storage iframe:io player.gui_using set from storage iframe:io player.gui_stack[-1]
data remove storage iframe:io player.gui_stack[-1]
function iframe:player_space/_store
tag @s add iframe_update