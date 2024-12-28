#iframe:new_addr

data modify storage iframe:io free_addr prepend value 0
execute store result storage iframe:io free_addr[0] int 1 run scoreboard players add #id iframe_id 1

data modify storage iframe:io player_space append value {}