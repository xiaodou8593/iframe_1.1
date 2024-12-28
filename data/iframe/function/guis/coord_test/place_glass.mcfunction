#iframe:guis/coord_test/place_glass

# 当前gui入栈
function iframe:gui_stack/_push

# 需要一个坐标参数
function iframe:player_space/_get
data modify storage iframe:io player.coord_result set value []
data modify storage iframe:io player.coord_expect set value 1
function iframe:player_space/_store

# 进入获取坐标gui
data modify storage iframe:io input set value "iframe:guis/get_coord"
function iframe:_enter