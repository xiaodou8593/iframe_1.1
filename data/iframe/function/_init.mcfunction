#iframe:_init

# 基础设置
execute in minecraft:overworld run function marker_control:_init

# 建立记分板
scoreboard objectives add iframe_id dummy
scoreboard objectives add iframe_crc dummy
scoreboard objectives add iframe_rc minecraft.used:minecraft.carrot_on_a_stick

# 临时对象初始化
data modify storage iframe:io xyz set value [0.0d,0.0d,0.0d]

# 临时玩家数据
data modify storage iframe:io player_space set value []
data modify storage iframe:io free_addr set value []
scoreboard players set #id iframe_id -1

# 静态数据模板
function iframe:defaults

schedule function iframe:tick 1t replace