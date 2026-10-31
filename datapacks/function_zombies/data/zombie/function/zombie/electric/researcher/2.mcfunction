
summon zombie_villager ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.researcher"],attributes:[{id:"attack_damage",base:5},{id:"safe_fall_distance",base:10},{id:"scale",base:0.8},{id:"burning_time",base:0}],equipment:{head:{id:"white_stained_glass",count:1}},data:{name:[{translate:zb.zombie.name.researcher,color:white}]},VillagerData:{type:"plains",profession:librarian,level:2}}

execute store result score color zombie.random run random value 0..7
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=16777215]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=15987699]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=15592941]
execute if score color zombie.random matches 3 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=15329769]
execute if score color zombie.random matches 4 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=14803425]
execute if score color zombie.random matches 5 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=11816720]
execute if score color zombie.random matches 6 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=10832143]
execute if score color zombie.random matches 7 run item replace entity @n[type=zombie_villager,tag=chosen] armor.chest with leather_chestplate[dyed_color=10963215]

execute store result score random zombie.random run random value 0..5
execute if score random zombie.random matches 0 run item replace entity @n[type=zombie_villager,tag=chosen] weapon.mainhand with repeater
execute if score random zombie.random matches 1 run item replace entity @n[type=zombie_villager,tag=chosen] weapon.mainhand with lever
execute if score random zombie.random matches 2 run item replace entity @n[type=zombie_villager,tag=chosen] weapon.mainhand with hopper
execute if score random zombie.random matches 3 run item replace entity @n[type=zombie_villager,tag=chosen] weapon.mainhand with glass_bottle
execute if score random zombie.random matches 4 run item replace entity @n[type=zombie_villager,tag=chosen] weapon.mainhand with book
execute if score random zombie.random matches 5 run item replace entity @n[type=zombie_villager,tag=chosen] weapon.mainhand with paper

execute store result score random zombie.random run random value 0..10
execute if score random zombie.random matches 0..3 run data merge entity @n[type=zombie_villager,tag=chosen] {IsBaby:1b}

execute if score random zombie.random matches 0..3 run tag @n[type=zombie_villager,tag=chosen] add babyzombie

scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.health 600
scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.speed 29
execute if score random zombie.random matches 0..3 run scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.speed 22

scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.armor 0

scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.knockresistance 75

scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie_villager,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie_villager,tag=chosen] remove chosen
scoreboard players reset color zombie.random
scoreboard players reset random zombie.random
