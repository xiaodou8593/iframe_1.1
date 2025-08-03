#iframe:ray/_prescript_2
# 设置实体对象的规定性
# 输入执行者实体

scoreboard players set @s iframe_ray_per 2

tag @s add iframe_ray
tag @s add iframe_object

# 从编号池拿取编号
execute unless data storage iframe:io object_addr[0] run function iframe:object_addr
execute store result score @s iframe_oid run data get storage iframe:io object_addr[0]
data remove storage iframe:io object_addr[0]

# 生成相位
scoreboard players operation @s iframe_ray_phi = @s iframe_oid
scoreboard players operation @s iframe_ray_phi %= @s iframe_ray_per