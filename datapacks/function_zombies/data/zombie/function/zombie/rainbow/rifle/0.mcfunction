
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","creepermotion","creeperdamage","skill.rainbowzombie","skill.rainbowzombie.rifle"],equipment:{head:{id:player_head,count:1,components:{profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgzMTYyZWQxNTI2YjJmNjIzNDdlZmI0Mzc0OGRkNGQ4NmRlYzhiYWE2ZWZhOTg2ODc4ZTg3ZDJlMmM2In19fQ=="}]}}},chest:{id:leather_chestplate,count:1,components:{dyed_color:256}},legs:{id:leather_leggings,count:1,components:{dyed_color:256}},feet:{id:leather_boots,count:1,components:{dyed_color:256}},mainhand:{id:golden_shovel,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],data:{name:[{translate:zb.zombie.name.rainbowzombie}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 2500
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 200
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 300

scoreboard players set @n[type=zombie,tag=chosen] zombie.rainbow.armor.r 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.rainbow.armor.g 0
scoreboard players set @n[type=zombie,tag=chosen] zombie.rainbow.armor.b 255

tag @n[type=zombie,tag=chosen] remove chosen
