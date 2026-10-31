
summon item ~ ~ ~ {\
    CustomName:[{translate:zb.powerup.bonusgold.0}],CustomNameVisible:1b,\
    Age:-32768,Health:9447s,PickupDelay:32767,NoGravity:1b,data:{powerup:bonusgold},\
    Tags:["powerup","bonusgold","item","chosen"],Item:{id:"gold_block",count:1b}\
}
scoreboard players operation @n[type=item,tag=powerup,tag=chosen] powerup.timer = stay powerup.timer
team join collision @n[type=item,tag=powerup,tag=chosen]
tag @e[type=item,tag=powerup,tag=chosen] remove chosen

execute if score debug_powerup round matches 1 run say bonusgold dropped