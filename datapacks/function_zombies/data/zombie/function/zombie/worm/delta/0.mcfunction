
summon silverfish ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creeperdamage","creepermotion"],attributes:[{id:"attack_damage",base:5},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0},{id:"scale",base:1}],data:{name:[{translate:zb.zombie.name.worm.0,color:gray}]}}

effect give @n[type=silverfish,tag=chosen] invisibility infinite 0 true
effect give @n[type=silverfish,tag=chosen] glowing infinite 0 true

scoreboard players set @n[type=silverfish,tag=chosen] zombie.health 2000
scoreboard players set @n[type=silverfish,tag=chosen] zombie.speed 25
scoreboard players set @n[type=silverfish,tag=chosen] zombie.armor 0

scoreboard players set @n[type=silverfish,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=silverfish,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=silverfish,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=silverfish,tag=chosen] zombie.portalmotion_max 300

tag @n[type=silverfish,tag=chosen] remove chosen
