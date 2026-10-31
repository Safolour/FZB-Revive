
function map:area/lab/monhan/showcase/trigger/use1_1_if with entity @n[type=item,tag=area.lab.showcase.display] Item.components."minecraft:custom_data"
execute if score replaceable area.showcase matches 0 run return fail
$tellraw @s [{translate:zb.area.showcase.tellraw.7,with:[$(name0),$(name)]}]
$tellraw @a[tag=!chosen,scores={system.room=4..}] [{translate:zb.area.showcase.tellraw.8,with:[{selector:"@s"},$(name0),$(name)]}]
execute at @s run playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
item replace block 1 -60 1 container.25 with carrot_on_a_stick
scoreboard players set item_display area.showcase 1
data modify block 1 -60 1 Items[{Slot:25b}].components set from entity @n[type=item,tag=area.lab.showcase.display] Item.components
scoreboard players set @s inventory 2
item replace entity @s weapon from block 1 -60 1 container.25
scoreboard players set @s inventory 1
item replace block 1 -60 1 container.25 with air


