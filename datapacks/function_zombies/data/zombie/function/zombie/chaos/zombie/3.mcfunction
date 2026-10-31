
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","zombieleft","deathanimation","portalmotion","skill.chaoszombie"],attributes:[{id:"attack_damage",base:5},{id:"safe_fall_distance",base:10},{id:"burning_time",base:0}],equipment:{head:{id:"leather_helmet",count:1,components:{dyed_color:16772846}},mainhand:{id:diamond_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.chaoszombie,color:"#ff4d4d"}]}}

execute store result score color zombie.random run random value 0..2
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=16101809]
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=15360610]
execute if score color zombie.random matches 0 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=15743289]
execute if score color zombie.random matches 0 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 31
execute if score color zombie.random matches 0 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 0

execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=16760253]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=16734810]
execute if score color zombie.random matches 1 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=15671328]
execute if score color zombie.random matches 1 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 32
execute if score color zombie.random matches 1 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 20

execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.chest with leather_chestplate[dyed_color=16756398]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.legs with leather_leggings[dyed_color=16736095]
execute if score color zombie.random matches 2 run item replace entity @n[type=zombie,tag=chosen] armor.feet with leather_boots[dyed_color=16711680]
execute if score color zombie.random matches 2 run scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 33
execute if score color zombie.random matches 2 run scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 40

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 400

scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 0

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

tag @n[type=zombie,tag=chosen] remove chosen
scoreboard players reset color zombie.random
