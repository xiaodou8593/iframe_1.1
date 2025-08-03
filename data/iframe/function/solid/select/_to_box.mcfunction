#iframe:solid/select/_to_box
# 选中方块转换碰撞箱
# 输入iframe:solid.select_point{<solid_x,int,1>,<solid_y,int,1>,<solid_z,int,1>}
# 输出iframe:box{<x_min,int>,<x_max,int>,<y_min,int>,<y_max,int>,<z_min,int>,<z_max,int>}

scoreboard players operation x_min int = solid_x int
scoreboard players operation x_min int *= 10000 int
scoreboard players operation x_max int = solid_x int
scoreboard players operation x_max int *= 10000 int
scoreboard players add x_max int 10000

scoreboard players operation y_min int = solid_y int
scoreboard players operation y_min int *= 10000 int
scoreboard players operation y_max int = solid_y int
scoreboard players operation y_max int *= 10000 int
scoreboard players add y_max int 10000

scoreboard players operation z_min int = solid_z int
scoreboard players operation z_min int *= 10000 int
scoreboard players operation z_max int = solid_z int
scoreboard players operation z_max int *= 10000 int
scoreboard players add z_max int 10000