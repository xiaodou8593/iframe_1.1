#iframe:guis/get_coord/macro_button

$item replace entity @s hotbar.$(slot) with carrot_on_a_stick[item_name='{"text":"§c右击竿"}',\
	minecraft:lore=['{"text":"右键确定，F键取整坐标确定，Q键取消","color":"gray","italic":false}'],\
	minecraft:custom_data={\
		iframe_ui:1b,\
		iframe:"get_coord_button",\
	}\
]