#iframe:gui_stack/_push
# 当前gui入栈
# 以玩家为执行者

function iframe:player_space/_get
data modify storage iframe:io player.gui_stack append from storage iframe:io player.gui_using
function iframe:player_space/_store