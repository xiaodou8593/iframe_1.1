#iframe:inv_loop
# iframe:_re_inv调用
# iframe:_re_hotbar调用

execute store result score temp_slot int run data get storage iframe:io inv[0].Slot
execute if score temp_slot int matches 0..35 run function iframe:inv_0-35 with storage iframe:io inv[0]
execute unless score temp_slot int matches 0..35 run function iframe:inv_else

data remove storage iframe:io inv[0]
execute if data storage iframe:io inv[0] run function iframe:inv_loop