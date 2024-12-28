#iframe:guis/get_coord/items

clear @s
execute store result score slot int run data get entity @s SelectedItemSlot

execute store result storage iframe:io slot int 1 run scoreboard players get slot int
function iframe:guis/get_coord/macro_button with storage iframe:io {}