
summon skeleton ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","crimson","firezb","skill.fireskeleton"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:16756224,enchantment_glint_override:true}},mainhand:{id:"fire_charge"}},data:{name:[{translate:zb.zombie.name.nether.crimson.fireskeleton,color:yellow}]}}

scoreboard players set @n[type=skeleton,tag=chosen] zombie.health 250
scoreboard players set @n[type=skeleton,tag=chosen] zombie.speed 20
scoreboard players set @n[type=skeleton,tag=chosen] zombie.armor 0

scoreboard players set @n[type=skeleton,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=skeleton,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=skeleton,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=skeleton,tag=chosen] zombie.portalmotion_max 450

tag @n[type=skeleton,tag=chosen] remove chosen
