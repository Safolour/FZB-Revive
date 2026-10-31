

$tellraw @s [{translate:zb.area.showcase.tellraw.5,with:[$(name)]}]
$tellraw @a[tag=!chosen,scores={system.room=4..}] [{translate:zb.area.showcase.tellraw.6,with:[{selector:"@s"},$(name)]}]
execute at @s run playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
item replace block 1 -60 1 container.25 with carrot_on_a_stick
scoreboard players set item_display area.showcase 2
data modify block 1 -60 1 Items[{Slot:25b}].components set from entity @n[type=item,tag=area.lab.showcase.display] Item.components
scoreboard players set @s inventory 2
item replace entity @s weapon from block 1 -60 1 container.25
scoreboard players set @s inventory 1
item replace block 1 -60 1 container.25 with air