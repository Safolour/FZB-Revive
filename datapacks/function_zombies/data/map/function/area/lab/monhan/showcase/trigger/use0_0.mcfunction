

$tellraw @s [{translate:zb.area.showcase.tellraw.3,with:[{translate:$(translate)}]}]
$tellraw @a[tag=!chosen,scores={system.room=4..}] [{translate:zb.area.showcase.tellraw.4,with:[{selector:"@s"},{translate:$(translate)}]}]
execute at @s run playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players set item_display area.showcase 1
execute store result score slot area.showcase run data get entity @s SelectedItemSlot
execute store result storage item root.slot int 1 run scoreboard players get slot area.showcase
execute store result storage item root.count int 1 run scoreboard players get slot area.showcase
function map:shop/_get_item/weapon_slot with storage item root