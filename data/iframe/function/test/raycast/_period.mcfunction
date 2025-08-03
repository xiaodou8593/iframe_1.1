#iframe:test/raycast/_period
# 测试时期
# 输入$(per)
# 玩家聊天栏执行

execute if entity @s[tag=iframe_ray] run function iframe:ray/_unbe

tellraw @a "---iframe raycast test---"
$tellraw @a "iframe_ray_per: $(per)"
$scoreboard players set @s iframe_ray_per $(per)
function iframe:ray/_prescript

tag @s add iframe_test
tag @s add iframe_test_ray