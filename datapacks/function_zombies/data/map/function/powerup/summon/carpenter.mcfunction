
summon item ~ ~ ~ {\
    CustomName:[{translate:zb.powerup.carpenter.0}],CustomNameVisible:1b,\
    Age:-32768,Health:9447s,PickupDelay:32767,NoGravity:1b,data:{powerup:carpenter},\
    Tags:["powerup","carpenter","item","chosen"],Item:{id:"player_head",count:1b,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODUyY2YxZGMzNzMxYzNhOTAzMTViYzZhZDYyZDBkNDY4MTUyMDRiODMzNjM4ZDZmOTM0NTMzOTRiMDQyOTNiIn19fQ"}]}}}\
}
scoreboard players operation @n[type=item,tag=powerup,tag=chosen] powerup.timer = stay powerup.timer
team join collision @n[type=item,tag=powerup,tag=chosen]
tag @e[type=item,tag=powerup,tag=chosen] remove chosen

execute if score debug_powerup round matches 1 run say carpenter dropped
