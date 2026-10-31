
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.automation"],attributes:[{id:"attack_damage",base:7},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:5111935}},chest:{id:"iron_chestplate",count:1,components:{trim:{material:amethyst,pattern:dune}}},legs:{id:"iron_leggings",count:1,components:{trim:{material:amethyst,pattern:snout}}},feet:{id:"iron_boots",count:1}},data:{name:[{translate:zb.zombie.name.automation,color:"#410581"}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 800
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 20
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 115
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 75

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 120
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 130

scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

tag @n[type=zombie,tag=chosen] remove chosen
