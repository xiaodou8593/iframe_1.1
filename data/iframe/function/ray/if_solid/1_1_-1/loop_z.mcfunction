#iframe:ray/if_solid/1_1_-1/loop_z
# iframe:ray/if_solid/1_1_-1/init调用

scoreboard players operation sstemp_lz int += sstemp_dz int

execute unless block ~ ~ ~ #iframe:pass run return run function iframe:ray/if_solid/get_res

scoreboard players remove ssloop int 1
execute if score ssloop int matches ..0 run return run scoreboard players set iframe_ray_res int 0

execute if score sstemp_lz int < sstemp_lx int if score sstemp_lz int < sstemp_ly int positioned ~ ~ ~-1 run return run function iframe:ray/if_solid/1_1_-1/loop_z
execute if score sstemp_lx int < sstemp_ly int positioned ~1 ~ ~ run return run function iframe:ray/if_solid/1_1_-1/loop_x
execute positioned ~ ~1 ~ run function iframe:ray/if_solid/1_1_-1/loop_y