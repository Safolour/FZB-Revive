
summon item ~ ~ ~ {\
    CustomName:[{translate:zb.powerup.shoppingspree.0}],CustomNameVisible:1b,\
    Age:-32768,Health:9447s,PickupDelay:32767,NoGravity:1b,data:{powerup:shoppingspree},\
    Tags:["powerup","shoppingspree","item","chosen"],Item:{id:"ender_chest",count:1b}\
}
scoreboard players operation @n[type=item,tag=powerup,tag=chosen] powerup.timer = stay powerup.timer
team join collision @n[type=item,tag=powerup,tag=chosen]
tag @e[type=item,tag=powerup,tag=chosen] remove chosen

execute if score debug_powerup round matches 1 run say shoppingspree dropped