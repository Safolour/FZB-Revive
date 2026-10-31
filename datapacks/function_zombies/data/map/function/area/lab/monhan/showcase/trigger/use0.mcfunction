
item replace block 1 -60 1 container.26 from entity @s weapon
execute if items entity @s weapon *[custom_data~{tag:["gun"]}] run return run function map:area/lab/monhan/showcase/trigger/use0_0 with entity @s SelectedItem.components.minecraft:custom_name
tellraw @s [{translate:zb.area.showcase.tellraw.0}]
execute at @s run playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0