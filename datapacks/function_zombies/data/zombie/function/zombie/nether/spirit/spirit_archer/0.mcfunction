
summon stray ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","spirit","firezb","skill.spiritskeleton"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:15072767,trim:{material:"diamond",pattern:"flow"}}},mainhand:{id:nether_star}},data:{name:[{translate:zb.zombie.name.nether.spirit.spiritskeleton,color:"#d9fcff"}]}}

scoreboard players set @n[type=stray,tag=chosen] zombie.health 1500
scoreboard players set @n[type=stray,tag=chosen] zombie.speed 20
scoreboard players set @n[type=stray,tag=chosen] zombie.armor 0

scoreboard players set @n[type=stray,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=stray,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=stray,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=stray,tag=chosen] zombie.portalmotion_max 350

tag @n[type=stray,tag=chosen] remove chosen
