
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creeperdamage","creepermotion","skill.creation.collapse","skill.creation.ironsound","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDc1M2I5Y2M3YjI5ZDU1YjljMTNhODkwMWU2OGJiOGY4OGEwMGEzYjYyZDUzMjc1MWRhYTZkNGFmZDJlNmQyZSJ9fX0="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:13526791,trim:{material:"gold",pattern:"eye"}}},legs:{id:leather_leggings,count:1,components:{dyed_color:7631988}},feet:{id:leather_boots,count:1,components:{dyed_color:4342338}}},data:{name:[{translate:zb.zombie.name.creation.collapse}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 2000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

execute as @n[type=zombie,tag=chosen] run function zombie:skill/creation/collapse/init

tag @n[type=zombie,tag=chosen] remove chosen
