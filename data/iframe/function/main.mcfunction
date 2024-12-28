#iframe:main

function iframe:player_space/_get
scoreboard players set iframe_discard int 0
execute if entity @s[tag=iframe_update] run function iframe:update_gui with storage iframe:io player
execute if score iframe_discard int matches 0 run function iframe:using_gui with storage iframe:io player