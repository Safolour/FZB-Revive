# Same rank/name message for the paid shop and training machine.
$execute if score #upgrade_text_level shop matches 0..1 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.i}]}]
$execute if score #upgrade_text_level shop matches 2 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.ii}]}]
$execute if score #upgrade_text_level shop matches 3 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.iii}]}]
$execute if score #upgrade_text_level shop matches 4 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.iv}]}]
$execute if score #upgrade_text_level shop matches 5 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(gun)},{translate:zb.shop.tellraw.v}]}]
