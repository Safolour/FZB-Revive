
summon skeleton ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","portalmotion","skill.creeper","creepermotion","creeperdamage"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0},{id:"scale",base:0.8}],data:{name:[{translate:zb.zombie.name.creeper,color:dark_green}]},Silent:1b}

effect give @n[type=skeleton,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=skeleton,tag=chosen] zombie.health 5000
scoreboard players set @n[type=skeleton,tag=chosen] zombie.speed 32
scoreboard players set @n[type=skeleton,tag=chosen] zombie.armor 0

scoreboard players set @n[type=skeleton,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=skeleton,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=skeleton,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=skeleton,tag=chosen] zombie.portalmotion_max 300

execute as @n[type=skeleton,tag=chosen] run function zombie:skill/creeper/creeper/init

tag @n[type=skeleton,tag=chosen] remove chosen
