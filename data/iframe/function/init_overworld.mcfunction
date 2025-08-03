#iframe:init_overworld
# iframe:_init调用

function marker_control:_init

# 生成物品中转站
kill 0-0-0-0-2
summon item_display 0 -67 0 {Tags:["item_marker"],UUID:[I;0,0,0,2],CustomName:'"item_marker"'}