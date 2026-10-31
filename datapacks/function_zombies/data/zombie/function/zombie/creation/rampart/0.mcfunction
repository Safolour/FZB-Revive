
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creeperdamage","creepermotion","skill.creation.rampart","skill.creation.ironsound","cantpuncher"],attributes:[{id:"attack_damage",base:4},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFmMWM3MTVmNWEzNjhmODQwNjRlNjdjOTY3Zjc5YmUwMjg0NGJkNzgyZDdmMWQ0Mzc3YzBmZTQxOGQ3YWFhNyJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:1653963,trim:{material:"diamond",pattern:"bolt"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7631988}},feet:{id:leather_boots,count:1,components:{dyed_color:4342338}},offhand:{id:shield,components:{base_color:black,banner_patterns:[{color:"blue",pattern:"flower"}]}}},data:{name:[{translate:zb.zombie.name.creation.rampart}]},Invulnerable:1b}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 4000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 27
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
