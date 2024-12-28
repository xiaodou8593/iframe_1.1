#iframe:guis/get_coord/cancel

# 取消读取坐标
function iframe:player_space/_get
data remove storage iframe:io player.coord_expect
function iframe:player_space/_store

# 当前gui出栈，退出get_coord函数
function iframe:gui_stack/_pop