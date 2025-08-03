#iframe:test/ncoord/loop
# iframe:test/ncoord/main调用

$tp @s $(test).0 0 0
execute at @s run function iframe:test/ncoord/detect

$tp @s $(test).9999999999 0 0
execute at @s run function iframe:test/ncoord/detect

scoreboard players remove loop int 1
execute if score loop int matches ..0 run return fail
execute if score n int matches ..0 run return fail

scoreboard players remove n int 1
scoreboard players set temp int -214748
execute store result storage iframe:io test int 1 run scoreboard players operation temp int += n int
function iframe:test/ncoord/loop with storage iframe:io {}