
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.bomber.burst"],attributes:[{id:"attack_damage",base:2},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:tnt,count:1},chest:{id:leather_chestplate,count:1,components:{dyed_color:16176646}},legs:{id:leather_leggings,count:1,components:{dyed_color:16775895}},feet:{id:leather_boots,count:1,components:{dyed_color:16774610}},mainhand:{id:tnt,count:1},offhand:{id:tnt,count:1}},data:{name:[{translate:zb.zombie.name.bomber,color:yellow}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 420
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 26
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 200

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
