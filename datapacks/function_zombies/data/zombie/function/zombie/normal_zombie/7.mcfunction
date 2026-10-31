
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion"],attributes:[{id:"attack_damage",base:7},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{chest:{id:"iron_chestplate",count:1},legs:{id:"iron_leggings",count:1},feet:{id:"iron_boots",count:1}},data:{name:[{translate:zb.zombie.name.normalzombie,color:gray}]}}

execute store result score color zombie.random run random value 0..10
execute if score color zombie.random matches 0..8 run item replace entity @n[type=zombie,tag=chosen] weapon.mainhand with iron_axe[attribute_modifiers=[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]]
execute if score color zombie.random matches 9 run item replace entity @n[type=zombie,tag=chosen] weapon.mainhand with diamond_axe[attribute_modifiers=[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]]

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 600
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
scoreboard players reset color zombie.random
