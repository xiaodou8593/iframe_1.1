#iframe:ray/detect
# iframe:ray/oct_branch/$(branch)调用

execute if score temp_res int matches 0 run return fail

# 计算碰撞箱相交
function iframe:ray/_if_box_as
execute if score res int matches 0 run return fail
scoreboard players remove temp_res int 1

# 获得视线最近落点
execute if score sstemp_min int < temp_min int run function iframe:ray/detect_res