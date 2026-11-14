# 由 工具/gen_setting_gear.py 生成；请修改生成器后重新生成。
scoreboard players set @s inventory 2
$item replace block 1 -60 1 container.26 from entity @s container.$(slot)
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".laser_threshold set value $(threshold)
$item replace entity @s container.$(slot) from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
scoreboard players set @s inventory 1
function inventory:item_store
