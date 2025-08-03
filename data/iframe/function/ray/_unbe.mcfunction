#iframe:ray/_unbe
# 解除实体对象的规定性
# 输入执行者实体

tag @s remove iframe_ray
tag @s remove iframe_object

data modify storage iframe:io object_addr prepend value 0
execute store result storage iframe:io object_addr[0] int 1 run scoreboard players get @s iframe_oid