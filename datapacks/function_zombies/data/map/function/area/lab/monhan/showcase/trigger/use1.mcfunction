
item replace block 1 -60 1 container.26 from entity @s weapon
execute if items entity @s weapon *[custom_data~{tag:["gun"]}] run data modify entity @n[type=item,tag=area.lab.showcase.display] data.name0 set from entity @s SelectedItem.components.minecraft:custom_name
execute if items entity @s weapon *[custom_data~{tag:["gun"]}] run return run function map:area/lab/monhan/showcase/trigger/use1_1 with entity @n[type=item,tag=area.lab.showcase.display] data
execute if items entity @s weapon *[custom_data~{tag:["weapon_slot"]}] run return run function map:area/lab/monhan/showcase/trigger/use1_0 with entity @n[type=item,tag=area.lab.showcase.display] data
tellraw @s [{translate:zb.area.showcase.tellraw.1}]
execute at @s run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0