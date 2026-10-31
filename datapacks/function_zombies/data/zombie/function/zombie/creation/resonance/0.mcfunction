
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creeperdamage","creepermotion","skill.creation.resonance","skill.creation.ironsound"],attributes:[{id:"attack_damage",base:12},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODIxMTBjM2JjM2UyOGRjODc1MDMyNWM4MGYyODM1ZDZiMGI3NDIzYjgyM2UzYTgyNjhhNTlkMjgyYTlmNWZhMCJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:255,trim:{material:"lapis",pattern:"host"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7631988}},feet:{id:leather_boots,count:1,components:{dyed_color:4342338}},mainhand:{id:name_tag}},data:{name:[{translate:zb.zombie.name.creation.resonance}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 4000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
