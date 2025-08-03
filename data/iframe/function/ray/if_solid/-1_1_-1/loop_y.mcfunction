#iframe:ray/if_solid/-1_1_-1/loop_y
# iframe:ray/if_solid/-1_1_-1/init调用

scoreboard players operation sstemp_ly int += sstemp_dy int

execute unless block ~ ~ ~ #iframe:pass run return run function iframe:ray/if_solid/get_res

scoreboard players remove ssloop int 1
execute if score ssloop int matches ..0 run return run scoreboard players set iframe_ray_res int 0

execute if score sstemp_ly int < sstemp_lx int if score sstemp_ly int < sstemp_lz int positioned ~ ~1 ~ run return run function iframe:ray/if_solid/-1_1_-1/loop_y
execute if score sstemp_lx int < sstemp_lz int positioned ~-1 ~ ~ run return run function iframe:ray/if_solid/-1_1_-1/loop_x
execute positioned ~ ~ ~-1 run function iframe:ray/if_solid/-1_1_-1/loop_z