#iframe:ray/detect_res
# iframe:ray/detect调用

scoreboard players operation temp_ptr int = @s iframe_oid
scoreboard players operation temp_min int = sstemp_min int

scoreboard players operation temp_ix int = sstempf0 int
scoreboard players operation temp_iy int = sstempf1 int
scoreboard players operation temp_iz int = sstempf2 int
scoreboard players operation temp_ix int *= sstemp_min int
scoreboard players operation temp_iy int *= sstemp_min int
scoreboard players operation temp_iz int *= sstemp_min int
scoreboard players operation temp_ix int /= 100 int
scoreboard players operation temp_iy int /= 100 int
scoreboard players operation temp_iz int /= 100 int
scoreboard players operation temp_ix int += x_start int
scoreboard players operation temp_iy int += y_start int
scoreboard players operation temp_iz int += z_start int