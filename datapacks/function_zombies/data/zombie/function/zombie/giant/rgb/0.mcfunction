
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","zombieleft","deathanimation","skill.giant","cantinstakill","skill.rainbowzombie","creeperdamage","giantzombie","skill.rgbgiant"],attributes:[{id:"attack_damage",base:15},{id:"safe_fall_distance",base:10},{id:"scale",base:6},{id:"entity_interaction_range",base:20},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:255}},chest:{id:leather_chestplate,count:1,components:{dyed_color:255}},legs:{id:leather_leggings,count:1,components:{dyed_color:255}},feet:{id:leather_boots,count:1,components:{dyed_color:255}},mainhand:{id:diamond_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.giant.rgb}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 36000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 38
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=zombie,tag=chosen] zombie.rainbow.armor.r 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.rainbow.armor.g 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.rainbow.armor.b 255

scoreboard players set @n[type=zombie,tag=chosen] armor.rainbow_armor.speed 200

tag @n[type=zombie,tag=chosen] remove chosen
