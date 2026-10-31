
summon stray ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","warped","firezb","skill.warpedskeleton"],attributes:[{id:"attack_damage",base:1},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:299397,enchantment_glint_override:true}},mainhand:{id:"ender_eye"}},data:{name:[{translate:zb.zombie.name.nether.warped.warpedskeleton,color:"#008b8b"}]}}

scoreboard players set @n[type=stray,tag=chosen] zombie.health 300
scoreboard players set @n[type=stray,tag=chosen] zombie.speed 20
scoreboard players set @n[type=stray,tag=chosen] zombie.armor 0

scoreboard players set @n[type=stray,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=stray,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=stray,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=stray,tag=chosen] zombie.portalmotion_max 450

tag @n[type=stray,tag=chosen] remove chosen
