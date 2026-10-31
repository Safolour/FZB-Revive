
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.automation"],attributes:[{id:"attack_damage",base:4},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:2543553}},chest:{id:"iron_chestplate",count:1,components:{trim:{material:diamond,pattern:dune}}},legs:{id:"iron_leggings",count:1,components:{trim:{material:diamond,pattern:snout}}},feet:{id:"iron_boots",count:1}},data:{name:[{translate:zb.zombie.name.automation,color:"#1bc699"}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 500
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 17
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 130
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 60

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 120
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 130

scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

tag @n[type=zombie,tag=chosen] remove chosen
