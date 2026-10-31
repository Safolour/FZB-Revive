
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","deathanimation","skill.giant","cantinstakill","skill.lasrgiant","creeperdamage","giantzombie"],attributes:[{id:"attack_damage",base:15},{id:"safe_fall_distance",base:10},{id:"scale",base:6},{id:"entity_interaction_range",base:20},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:14124421}},chest:{id:leather_chestplate,count:1,components:{dyed_color:14124421}},legs:{id:leather_leggings,count:1,components:{dyed_color:14124421}},feet:{id:leather_boots,count:1,components:{dyed_color:14124421}}},data:{name:[{translate:zb.zombie.name.giant.lasr}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 8000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 35
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

tag @n[type=zombie,tag=chosen] remove chosen
