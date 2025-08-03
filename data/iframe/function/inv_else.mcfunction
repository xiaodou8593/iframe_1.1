#iframe:inv_else
# iframe:inv_loop调用

data modify entity 0-0-0-0-2 item set from storage iframe:io inv[0]
execute if score temp_slot int matches -106 run item replace entity @s weapon.offhand from entity 0-0-0-0-2 contents
execute if score temp_slot int matches 100 run item replace entity @s armor.feet from entity 0-0-0-0-2 contents
execute if score temp_slot int matches 101 run item replace entity @s armor.legs from entity 0-0-0-0-2 contents
execute if score temp_slot int matches 102 run item replace entity @s armor.chest from entity 0-0-0-0-2 contents
execute if score temp_slot int matches 103 run item replace entity @s armor.head from entity 0-0-0-0-2 contents