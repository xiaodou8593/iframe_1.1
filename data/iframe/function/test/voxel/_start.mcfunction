#iframe:test/voxel/_start
# 开始voxel测试
# 聊天栏执行

tag @e[tag=test] remove test
tag @s add test

scoreboard players set test int 1

schedule function iframe:test/voxel/main 1t