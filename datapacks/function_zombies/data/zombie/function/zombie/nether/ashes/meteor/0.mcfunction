
summon zombie ~ ~ ~ {Tags:["chosen","mob","window_break","zombieleft","skill.meteor"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],data:{name:[{translate:zb.zombie.name.nether.ashes.meteor,color:"#c8aebb"}]},Silent:1b}

effect give @n[type=zombie,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 1400
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 20

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 50
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 350

execute as @n[type=zombie,tag=chosen] at @s run function zombie:skill/nether/ashes/meteor/init

tag @n[type=zombie,tag=chosen] remove chosen
