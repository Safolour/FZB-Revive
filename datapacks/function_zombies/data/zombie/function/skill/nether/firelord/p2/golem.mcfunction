summon zombie ~ ~ ~ {Tags:["mob","hitable","window_break","zombieleft","firelord.p2.golem"],PersistenceRequired:1b,attributes:[{id:"attack_damage",base:8},{id:"burning_time",base:0}],equipment:{head:{id:"player_head",count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU4NTYxYmEzNjFiMzdjNmU0NTNjYmQ3MzQ1YmU4ZDk5YWNiOTRkZDA0YjZjMTc4YTc1ZmVkODcwMTYzNWRiIn19fQ=="}]}}},chest:{id:"leather_chestplate",count:1,components:{dyed_color:3604480}},legs:{id:"leather_leggings",count:1,components:{dyed_color:3604480}},feet:{id:"leather_boots",count:1,components:{dyed_color:11340041}}},data:{name:[{translate:"zb.zombie.name.ashesgolem"}]}}
scoreboard players set @e[type=zombie,tag=firelord.p2.golem,sort=nearest,limit=1,distance=..1] zombie.health 1000
scoreboard players set @e[type=zombie,tag=firelord.p2.golem,sort=nearest,limit=1,distance=..1] zombie.speed 25
scoreboard players set @e[type=zombie,tag=firelord.p2.golem,sort=nearest,limit=1,distance=..1] zombie.armor 0
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]
playsound entity.evoker.prepare_summon hostile @a[scores={system.room=4..}] ~ ~1 ~ 1.5 1
