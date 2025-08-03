#iframe:test/raycast/_end
# 结束测试
# 玩家聊天栏执行

kill @e[tag=iframe_test_box]

function iframe:ray/_unbe
tag @s remove iframe_test
tag @s remove iframe_test_ray

schedule clear iframe:test/raycast/main