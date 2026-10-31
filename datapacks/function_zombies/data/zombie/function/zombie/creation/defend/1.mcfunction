
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creeperdamage","creepermotion","skill.creation.defend","skill.creation.ironsound"],attributes:[{id:"attack_damage",base:8},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjUwYzNlODM3OGUzOTQ0ZDExMGJmNWRiNDI5OGE3YmJiMzY2NTlkNjU2MDNiYmQ2NjJjNDk4ODkxNmE4MTEyYyJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:13418110,trim:{material:"iron",pattern:"spire"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7631988}},feet:{id:leather_boots,count:1,components:{dyed_color:4342338}},mainhand:{id:iron_pickaxe,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}},offhand:{id:shield,components:{base_color:black,banner_patterns:[{color:"red",pattern:"circle"}]}}},data:{name:[{translate:zb.zombie.name.creation.defend}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 2000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 29
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
