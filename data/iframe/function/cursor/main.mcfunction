#iframe:cursor/main

scoreboard players operation y int = @s y
execute store result storage iframe:io xyz[0] double 0.0001 run scoreboard players get @s x
execute store result storage iframe:io xyz[1] double 0.0001 run scoreboard players remove y int 5000
execute store result storage iframe:io xyz[2] double 0.0001 run scoreboard players get @s z
data modify entity @s Pos set from storage iframe:io xyz