#iframe:cursor/set

execute on passengers run data modify entity @s {} merge from storage iframe:io input
scoreboard players operation @s int = tempid int

execute unless data storage iframe:io object_addr[0] run function iframe:object_addr
execute store result score @s iframe_oid run data get storage iframe:io object_addr[0]
data remove storage iframe:io object_addr[0]

function iframe:cursor/_refresh_time