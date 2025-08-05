#iframe:ray/if_solid/-1_-1_-1/loop_x
# iframe:ray/if_solid/-1_-1_-1/init调用

execute if score sstemp_lx int > sstemp_max int run return run scoreboard players set iframe_ray_res int 0

scoreboard players operation sstemp_lx int += sstemp_dx int

execute unless block ~ ~ ~ #iframe:pass run return run function iframe:ray/if_solid/get_res

execute if score sstemp_lx int < sstemp_ly int if score sstemp_lx int < sstemp_lz int positioned ~-1 ~ ~ run return run function iframe:ray/if_solid/-1_-1_-1/loop_x
execute if score sstemp_ly int < sstemp_lz int positioned ~ ~-1 ~ run return run function iframe:ray/if_solid/-1_-1_-1/loop_y
execute positioned ~ ~ ~-1 run function iframe:ray/if_solid/-1_-1_-1/loop_z