#iframe:cursor/_del

data modify storage iframe:io object_addr prepend value 0
execute store result storage iframe:io object_addr[0] int 1 run scoreboard players get @s iframe_oid

execute on passengers run kill @s
kill @s