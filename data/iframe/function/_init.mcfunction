#iframe:_init

# 基础设置
execute in minecraft:overworld run function iframe:init_overworld

# 建立记分板
scoreboard objectives add iframe_id dummy
scoreboard objectives add iframe_oid dummy
scoreboard objectives add iframe_crc dummy
scoreboard objectives add iframe_rc minecraft.used:minecraft.carrot_on_a_stick

# 时钟
scoreboard players set iframe_time int 0

# 临时对象初始化
data modify storage iframe:io xyz set value [0.0d,0.0d,0.0d]

# 临时玩家数据
data modify storage iframe:io player_space set value []
data modify storage iframe:io free_addr set value []
scoreboard players set #id iframe_id -1

# 对象计数器
data modify storage iframe:io object_addr set value []
scoreboard players set #id iframe_oid -1

# 静态数据模板
function iframe:defaults

# 设置常量
function iframe:_consts

# 初始化碰撞箱
function iframe:box/init

# 初始化视线
function iframe:ray/init

schedule function iframe:tick 1t replace