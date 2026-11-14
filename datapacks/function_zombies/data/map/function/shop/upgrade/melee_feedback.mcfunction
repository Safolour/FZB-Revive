# Same rank/name message for the paid shop and training machine.
$execute if score level shop matches 0 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.i}]}]
$execute if score level shop matches 1 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.i}]}]
$execute if score level shop matches 2 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.ii}]}]
$execute if score level shop matches 3 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.iii}]}]
$execute if score level shop matches 4 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.iv}]}]
$execute if score level shop matches 5 run tellraw @s [{translate:zb.shop.tellraw.13,with:[{translate:zb.shop.tellraw.$(weapon)},{translate:zb.shop.tellraw.v}]}]
