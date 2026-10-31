
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","deathanimation","skill.giant","cantinstakill","giantzombie"],attributes:[{id:"attack_damage",base:15},{id:"safe_fall_distance",base:10},{id:"scale",base:6},{id:"entity_interaction_range",base:20},{id:burning_time,base:0}],equipment:{head:{id:diamond_helmet,count:1},chest:{id:diamond_chestplate,count:1},legs:{id:diamond_leggings,count:1},feet:{id:diamond_boots,count:1}},data:{name:[{translate:zb.zombie.name.giant,color:dark_aqua}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 5000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 37
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

tag @n[type=zombie,tag=chosen] remove chosen
