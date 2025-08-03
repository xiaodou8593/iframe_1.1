#iframe:init_player
# iframe:_enter调用
# iframe:_enter_inv调用
# iframe:_enter_hotbar调用

execute unless data storage iframe:io free_addr[0] run function iframe:new_addr
execute store result score @s iframe_id run data get storage iframe:io free_addr[0]
data remove storage iframe:io free_addr[0]

tag @s add iframe_player

data modify storage iframe:io player set value {gui_stack:[]}
function iframe:player_space/_store