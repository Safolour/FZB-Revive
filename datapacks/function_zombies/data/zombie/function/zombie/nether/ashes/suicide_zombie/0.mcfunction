
summon husk ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","portalmotion","ashes","firezb","skill.suicidezombie"],attributes:[{id:"attack_damage",base:3},{id:"safe_fall_distance",base:10},{id:burning_time,base:0}],equipment:{head:{id:netherite_helmet,components:{trim:{material:"gold",pattern:"spire"}}},chest:{id:netherite_chestplate,components:{trim:{material:"gold",pattern:"spire"}}},legs:{id:netherite_leggings,components:{trim:{material:"gold",pattern:"spire"}}},feet:{id:netherite_boots,components:{trim:{material:"gold",pattern:"spire"}}},mainhand:{id:netherite_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.nether.ashes.suicidezombie,color:white}]}}

scoreboard players set @n[type=husk,tag=chosen] zombie.health 800
scoreboard players set @n[type=husk,tag=chosen] zombie.speed 25
scoreboard players set @n[type=husk,tag=chosen] zombie.armor 0

scoreboard players set @n[type=husk,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=husk,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=husk,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=husk,tag=chosen] zombie.portalmotion_max 350

execute as @n[type=husk,tag=chosen] at @s run function zombie:skill/nether/ashes/suicide_zombie/init

tag @n[type=husk,tag=chosen] remove chosen
