
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.superempoweredzombie"],attributes:[{id:"attack_damage",base:5},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{mainhand:{id:diamond_axe,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.superempowered,color:dark_red}]}}

execute store result score color zombie.random run random value 0..2
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=10813440]
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=10813440]
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=10813440]
execute if score color zombie.random matches 0 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 28
execute if score color zombie.random matches 0 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=13565952]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=13565952]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=13565952]
execute if score color zombie.random matches 1 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 29
execute if score color zombie.random matches 1 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 20

execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=15466496]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=15466496]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=15466496]
execute if score color zombie.random matches 2 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 30
execute if score color zombie.random matches 2 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 40

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 340

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
scoreboard players reset color zombie.random
