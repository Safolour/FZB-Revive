
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.bomber.throw"],attributes:[{id:"attack_damage",base:0.1},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:tnt,count:1},chest:{id:leather_chestplate,count:1,components:{dyed_color:14633739}},legs:{id:leather_leggings,count:1,components:{dyed_color:16773079}},feet:{id:leather_boots,count:1,components:{dyed_color:16774610}},mainhand:{id:tnt,count:1,components:{enchantments:{knockback:3},enchantment_glint_override:false}}},data:{name:[{translate:zb.zombie.name.bomber,color:yellow}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 480
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 34
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance -400

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
