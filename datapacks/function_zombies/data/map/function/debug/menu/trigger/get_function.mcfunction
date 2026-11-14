function map:debug/menu/trigger/get_weapon {item:function,type:"range/gun"}
execute unless items entity @s weapon.mainhand *[custom_data~{tag:["function"]}] run return fail

# 调试菜单为函数枪选择独立的毁灭激光释放阈值。
scoreboard players set @s inventory 2
item replace block 1 -60 1 container.26 from entity @s weapon.mainhand
$data modify block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_data".laser_threshold set value $(threshold)
item replace entity @s weapon.mainhand from block 1 -60 1 container.26
item replace block 1 -60 1 container.26 with air
scoreboard players set @s inventory 1

return fail
