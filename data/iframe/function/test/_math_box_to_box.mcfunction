#iframe:test/_math_box_to_box
# 数学库格式碰撞箱转化为iframe_box
# 输入math:box{<x,int>,<y,int>,<z,int>,<d,int,100w>,<h,int,100w>,<l,int,100w>}
# 输出iframe:box{<x_min,int>,<x_max,int>,<y_min,int>,<y_max,int>,<z_min,int>,<z_max,int>}

scoreboard players operation sstemp int = d int
scoreboard players operation sstemp int /= 100 int
scoreboard players operation x_min int = x int
scoreboard players operation x_min int -= sstemp int
scoreboard players operation x_max int = x int
scoreboard players operation x_max int += sstemp int

scoreboard players operation sstemp int = h int
scoreboard players operation sstemp int /= 100 int
scoreboard players operation y_min int = y int
scoreboard players operation y_max int = y int
scoreboard players operation y_max int += sstemp int

scoreboard players operation sstemp int = l int
scoreboard players operation sstemp int /= 100 int
scoreboard players operation z_min int = z int
scoreboard players operation z_min int -= sstemp int
scoreboard players operation z_max int = z int
scoreboard players operation z_max int += sstemp int