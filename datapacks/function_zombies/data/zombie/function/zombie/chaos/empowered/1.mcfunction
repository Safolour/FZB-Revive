
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.empoweredzombie"],attributes:[{id:"attack_damage",base:4},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{mainhand:{id:diamond_axe,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.empowered,color:red}]}}

execute store result score color zombie.random run random value 0..2
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=16744576]
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=16744576]
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=16744576]
execute if score color zombie.random matches 0 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 25
execute if score color zombie.random matches 0 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=16737637]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=16737637]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=16737637]
execute if score color zombie.random matches 1 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 26
execute if score color zombie.random matches 1 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 20

execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=16728128]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=16728128]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=16728128]
execute if score color zombie.random matches 2 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 27
execute if score color zombie.random matches 2 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 40

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 280

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
scoreboard players reset color zombie.random
