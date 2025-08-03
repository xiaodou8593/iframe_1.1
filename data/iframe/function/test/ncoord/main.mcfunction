#iframe:test/ncoord/main
# iframe:test/ncoord/start异步调用

# 测试结束条件
execute if score n int matches ..0 run return fail

# 显示测试进度
title @a actionbar ["", {"text":"ncoord testing: ","color":"green"}, {"score":{"name":"n","objective":"int"}}]

# 维持测试时间
scoreboard players set @s killtime 10

# 递归检查
scoreboard players set loop int 100
scoreboard players remove n int 1
scoreboard players set temp int -214748
execute store result storage iframe:io test int 1 run scoreboard players operation temp int += n int
function iframe:test/ncoord/loop with storage iframe:io {}

# 区块安全
tp @s 0 0 0