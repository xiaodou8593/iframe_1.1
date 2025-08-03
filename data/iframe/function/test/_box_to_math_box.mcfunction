#iframe:test/_box_to_math_box
# 碰撞箱转化为数学库格式
# 输入iframe:box{<x_min,int>,<x_max,int>,<y_min,int>,<y_max,int>,<z_min,int>,<z_max,int>}
# 输出math:box{<x,int>,<y,int>,<z,int>,<d,int,100w>,<h,int,100w>,<l,int,100w>}

scoreboard players operation d int = x_max int
scoreboard players operation d int -= x_min int
scoreboard players operation d int /= 2 int
scoreboard players operation x int = x_min int
scoreboard players operation x int += d int
scoreboard players operation d int *= 100 int

scoreboard players operation y int = y_min int
scoreboard players operation h int = y_max int
scoreboard players operation h int -= y_min int
scoreboard players operation h int *= 100 int

scoreboard players operation l int = z_max int
scoreboard players operation l int -= z_min int
scoreboard players operation l int /= 2 int
scoreboard players operation z int = z_min int
scoreboard players operation z int += l int
scoreboard players operation l int *= 100 int