
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","portalmotion","creeperdamage","creepermotion","skill.creation.destruction","skill.creation.ironsound"],attributes:[{id:"attack_damage",base:3},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWZkMzE4YjkzOWZhYmI4ODc3N2EzN2NmODFmNDNkYzk1NjZhNWE3NTM2MDY5MWQ0MDAxNTc1YjAyMDhmNTViMiJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:15204352,trim:{material:"copper",pattern:"coast"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7631988}},feet:{id:leather_boots,count:1,components:{dyed_color:4342338}}},data:{name:[{translate:zb.zombie.name.creation.destruction}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 1400
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 32
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
