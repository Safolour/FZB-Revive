
# 四倍金钱：只由金钱丢失增益掉落（手持金质武器击杀时，perk/gold_thrower/drop）
summon item ~ ~ ~ {\
    CustomName:[{translate:zb.powerup.quadruplegold.0}],CustomNameVisible:1b,\
    Age:-32768,Health:9447s,PickupDelay:32767,NoGravity:1b,data:{powerup:quadruplegold},\
    Tags:["powerup","quadruplegold","item","chosen"],Item:{id:"sunflower",count:1b}\
}
scoreboard players operation @n[type=item,tag=powerup,tag=chosen] powerup.timer = stay powerup.timer
team join collision @n[type=item,tag=powerup,tag=chosen]
tag @e[type=item,tag=powerup,tag=chosen] remove chosen

execute if score debug_powerup round matches 1 run say quadruplegold dropped
