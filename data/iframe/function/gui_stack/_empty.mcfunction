#iframe:gui_stack/_empty
# 判断gui栈空
# 以玩家为执行者
# 输出<res,int>

function iframe:player_space/_get
execute store result score res int if data storage iframe:io player.gui_stack[-1]