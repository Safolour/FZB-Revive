
scoreboard players operation @s gold -= price shop.price
execute store result storage shop root.state.slot int 1 run data get entity @s SelectedItemSlot
execute store result score level shop run data get entity @s SelectedItem.components."minecraft:custom_data".level
scoreboard players operation #upgrade_text_level shop = level shop
execute if data storage shop root.state{gun:"rainbowrocketlauncher"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage shop root.state{gun:"ultimaterainbowrocketlauncher"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage shop root.state{gun:"ultimaterainbowrocketlauncherii"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage shop root.state{gun:"rainbowshotgun"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage shop root.state{gun:"ultimaterainbowshotgun"} run scoreboard players add #upgrade_text_level shop 1
execute if data storage shop root.state{gun:"ultimaterainbowshotgunii"} run scoreboard players add #upgrade_text_level shop 1
$function weapon:range/gun/_get_item/replace/$(upgrade) with storage shop root.state
$function weapon:range/gun/gun/$(upgrade)/allammo
data remove storage shop root
playsound entity.player.levelup record @s ~ ~ ~ 1 1 0
execute if items entity @s weapon *[custom_data~{tag:["reset"]}] run return 1
$execute if score #upgrade_text_level shop matches 0..1 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.i}]}]
$execute if score #upgrade_text_level shop matches 2 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.ii}]}]
$execute if score #upgrade_text_level shop matches 3 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.iii}]}]
$execute if score #upgrade_text_level shop matches 4 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.iv}]}]
$execute if score #upgrade_text_level shop matches 5 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.v}]}]

$execute if score level shop matches 0 run scoreboard players set $(name).$(gun) shop.ultimate 1
$execute if score level shop matches 1 run scoreboard players set $(name).$(gun) shop.ultimate 2
$execute if score level shop matches 2 run scoreboard players set $(name).$(gun) shop.ultimate 3
$execute if score level shop matches 3 run scoreboard players set $(name).$(gun) shop.ultimate 4
$execute if score level shop matches 4 run scoreboard players set $(name).$(gun) shop.ultimate 5
$execute if score level shop matches 5 run scoreboard players set $(name).$(gun) shop.ultimate 6
