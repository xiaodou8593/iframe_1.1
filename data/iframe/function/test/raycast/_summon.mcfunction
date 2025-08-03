#iframe:test/raycast/_summon
# 生成测试碰撞箱
# 玩家聊天栏执行

kill @e[tag=iframe_test_box]
summon creeper 9 -56 7 {Tags:["test","iframe_test", "iframe_test_box"], NoAI:1b}

execute as @e[tag=iframe_test_box,limit=1] run function iframe:box/_prescript

execute at @e[tag=iframe_test_box,limit=1] as @e[tag=math_marker,limit=1] run function math:_toxyz
scoreboard players operation x_min int = x int
scoreboard players operation y_min int = y int
scoreboard players operation z_min int = z int
scoreboard players remove x_min int 3000
scoreboard players remove z_min int 3000
scoreboard players operation x_max int = x int
scoreboard players operation y_max int = y int
scoreboard players operation z_max int = z int
scoreboard players add x_max int 3000
scoreboard players add y_max int 17000
scoreboard players add z_max int 3000
execute as @e[tag=iframe_test_box,limit=1] run function iframe:box/_store

schedule function iframe:test/raycast/main 1t replace