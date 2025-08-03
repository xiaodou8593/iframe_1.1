#iframe:test/ncoord/start
# 聊天调用

# 生成测试进程实体
tag @e[tag=test] remove test
summon marker 0 0 0 {Tags:["test"]}

# 上传测试函数
execute as @e[tag=test,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "iframe:test/ncoord/main"
data modify storage marker_control:io result.del_func set value "iframe:test/ncoord/end"
execute as @e[tag=test,limit=1] run function marker_control:data/_store

# 异步函数标签
tag @e[tag=test,limit=1] add entity_ticked
tag @e[tag=test,limit=1] add entity_todel

# 设置测试参数
scoreboard players set n int 429497

scoreboard players set @e[tag=test,limit=1] killtime 10