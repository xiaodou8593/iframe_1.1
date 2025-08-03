#iframe:box/_prescript
# 设置实体对象的规定性
# 输入执行实体

tag @s add iframe_box
tag @s add iframe_object

# 从编号池拿取编号
execute unless data storage iframe:io object_addr[0] run function iframe:object_addr
execute store result score @s iframe_oid run data get storage iframe:io object_addr[0]
data remove storage iframe:io object_addr[0]