#iframe:object_addr
# iframe:cursor/set调用
# iframe:box/_prescript调用
# iframe:ray/_prescript调用

data modify storage iframe:io object_addr prepend value 0
execute store result storage iframe:io object_addr[0] int 1 run scoreboard players add #id iframe_oid 1