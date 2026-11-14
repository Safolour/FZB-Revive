# Idempotent repair: a round reset may remove all mobs, including this target.
execute if entity @e[type=zombie,tag=setting.dummy] run return 0
summon zombie 17.5 -59 852.5 {Tags:["setting.dummy","mob","hitable","nogold","cantinstakill","cantpuncher"],Rotation:[180f,0f],NoAI:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,IsBaby:0b,CustomNameVisible:1b,CustomName:{text:"伤害测试",color:"gold",bold:true,italic:false},Health:1024f,attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:movement_speed",base:0},{id:"minecraft:attack_damage",base:0},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:burning_time",base:0}],data:{name:{text:"伤害测试",color:"gold"}}}
execute as @e[type=zombie,tag=setting.dummy] at @s run function mainlobby:setting/dummy/init

