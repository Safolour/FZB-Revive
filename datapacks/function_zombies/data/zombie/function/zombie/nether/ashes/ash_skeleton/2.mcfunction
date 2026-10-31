
summon wither_skeleton ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","ashes","firezb","skill.ashskeleton"],attributes:[{id:"attack_damage",base:1},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:10485760,enchantment_glint_override:true}},mainhand:{id:"mojang_banner_pattern"}},data:{name:[{translate:zb.zombie.name.nether.ashes.ashesskeleton,color:dark_red}]}}

scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.health 600
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.speed 20
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.armor 0

scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=wither_skeleton,tag=chosen] zombie.portalmotion_max 350

tag @n[type=wither_skeleton,tag=chosen] remove chosen
