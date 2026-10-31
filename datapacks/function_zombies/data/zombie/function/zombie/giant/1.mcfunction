
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","deathanimation","skill.giant","cantinstakill","giantzombie"],attributes:[{id:"attack_damage",base:15},{id:"safe_fall_distance",base:10},{id:"scale",base:6},{id:"entity_interaction_range",base:20},{id:burning_time,base:0}],equipment:{head:{id:iron_helmet,count:1},chest:{id:iron_chestplate,count:1},legs:{id:iron_leggings,count:1},feet:{id:iron_boots,count:1}},data:{name:[{translate:zb.zombie.name.giant,color:dark_aqua}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 3000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 36
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

tag @n[type=zombie,tag=chosen] remove chosen
