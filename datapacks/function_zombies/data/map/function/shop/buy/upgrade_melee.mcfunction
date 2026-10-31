
scoreboard players operation @s gold -= price shop.price
execute store result storage shop root.state.slot int 1 run data get entity @s SelectedItemSlot
execute store result score level shop run data get entity @s SelectedItem.components."minecraft:custom_data".level
$function weapon:melee/_get_item/replace/$(upgrade) with storage shop root.state

data remove storage shop root
playsound entity.player.levelup record @s ~ ~ ~ 1 1 0
$execute if score level shop matches 0 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.i}]}]
$execute if score level shop matches 1 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.i}]}]
$execute if score level shop matches 2 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.ii}]}]
$execute if score level shop matches 3 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.iii}]}]
$execute if score level shop matches 4 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.iv}]}]
$execute if score level shop matches 5 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.v}]}]

$execute if score level shop matches 0 run scoreboard players set $(name).$(weapon) shop.ultimate 1
$execute if score level shop matches 1 run scoreboard players set $(name).$(weapon) shop.ultimate 2
$execute if score level shop matches 2 run scoreboard players set $(name).$(weapon) shop.ultimate 3
$execute if score level shop matches 3 run scoreboard players set $(name).$(weapon) shop.ultimate 4
$execute if score level shop matches 4 run scoreboard players set $(name).$(weapon) shop.ultimate 5
$execute if score level shop matches 5 run scoreboard players set $(name).$(weapon) shop.ultimate 6
