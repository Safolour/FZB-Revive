
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion"],attributes:[{id:"attack_damage",base:4},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{chest:{id:"chainmail_chestplate",count:1},legs:{id:"chainmail_leggings",count:1},mainhand:{id:"stone_axe",count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.normalzombie,color:gray}]}}

execute store result score color zombie.random run random value 0..10
execute if score color zombie.random matches 0..7 run item replace entity @n[type=zombie,tag=chosen] weapon.mainhand with stone_axe[attribute_modifiers=[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]]
execute if score color zombie.random matches 8..9 run item replace entity @n[type=zombie,tag=chosen] weapon.mainhand with iron_axe[attribute_modifiers=[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]]

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 500
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 26
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
scoreboard players reset color zombie.random
