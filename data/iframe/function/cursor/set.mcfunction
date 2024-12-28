#iframe:cursor/set

execute on passengers run data modify entity @s {} merge from storage iframe:io input
scoreboard players operation @s int = tempid int

function iframe:cursor/_refresh_time