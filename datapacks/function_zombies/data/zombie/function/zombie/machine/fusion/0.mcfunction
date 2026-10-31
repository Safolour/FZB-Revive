
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","portalmotion","cantslow","creeperdamage","creepermotion","skill.fusion"],attributes:[{id:"attack_damage",base:10},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTFkNWExZmY3Zjk3NmMxYzJlYmQ0ZWY5YTkwYWQ5MTQ2Nzk1YzFjNDRmZGFlNjI5NjQ5NDg0MzRhNzI1NyJ9fX0="}]}}}},data:{name:[{translate:zb.zombie.name.fusion,color:"#ff5800"}]}}

effect give @n[type=zombie,tag=chosen] invisibility infinite 0 true

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 3000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 50

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

tag @n[type=zombie,tag=chosen] remove chosen
