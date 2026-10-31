
scoreboard players set @s area.showcase 1
kill @e[type=item,tag=area.lab.showcase.display]
execute at @s run summon item ~ ~ ~ {Tags:["area","area.lab.showcase.display","display","chosen"],PickupDelay:-1,Age:-32768,NoGravity:1b,Invulnerable:1b,Item:{id:carrot_on_a_stick,count:1,components:{}}}
execute as @n[type=item,tag=area.lab.showcase.display,tag=chosen] run data modify entity @s Item.components set from block 1 -60 1 Items[{Slot:26b}].components
execute as @n[type=item,tag=area.lab.showcase.display,tag=chosen] run data modify entity @s data.name set from block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_name"
execute as @n[type=armor_stand,tag=area.lab.showcase.display,tag=text] run data modify entity @s CustomNameVisible set value 1b
execute as @n[type=armor_stand,tag=area.lab.showcase.display,tag=text] run data modify entity @s CustomName set from block 1 -60 1 Items[{Slot:26b}].components."minecraft:custom_name"
data modify storage map:showcase item set from block 1 -60 1 Items[{Slot:26b}]
tag @e[tag=chosen] remove chosen