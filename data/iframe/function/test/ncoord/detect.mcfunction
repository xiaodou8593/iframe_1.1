#iframe:test/ncoord/detect
# iframe:test/ncoord/loop调用

execute align xyz run tp @s ~0.5 ~0.5 ~0.5
data modify storage math:io xyz set from entity @s Pos
execute store result score tempx int run data get storage math:io xyz[0]
execute store result score tempy int run data get storage math:io xyz[1]
execute store result score tempz int run data get storage math:io xyz[2]

tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score x int run data get storage math:io xyz[0] 10000
execute store result score y int run data get storage math:io xyz[1] 10000
execute store result score z int run data get storage math:io xyz[2] 10000
scoreboard players operation x int /= 10000 int
scoreboard players operation y int /= 10000 int
scoreboard players operation z int /= 10000 int

execute if score tempx int = x int if score tempy int = y int if score tempz int = z int run return fail

tellraw @a [{"text":"ncoord error: ","color":"red"}, {"nbt":"xyz","storage":"math:io"}]
tellraw @a ["xyz: ",{"score":{"name":"x","objective":"int"}},", ",{"score":{"name":"y","objective":"int"}},", ",{"score":{"name":"z","objective":"int"}}]
tellraw @a ["temp: ",{"score":{"name":"tempx","objective":"int"}},", ",{"score":{"name":"tempy","objective":"int"}},", ",{"score":{"name":"tempz","objective":"int"}}]
scoreboard players set n int 0