
summon zombie ~ ~ ~ {Tags:["chosen","mob","hitable","window_break","skill.ultimatechaoszombie","bossbar","zombieleft","deathmessage","cantinstakill","cantslow","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:4},{id:"burning_time",base:0}],\
equipment:{head:{id:leather_helmet,count:1,components:{dyed_color:16711680}},chest:{id:iron_chestplate,count:1},legs:{id:leather_leggings,count:1,components:{dyed_color:16767963}},feet:{id:leather_boots,count:1,components:{dyed_color:16711680}},mainhand:{id:diamond_sword,count:1,components:{attribute_modifiers:[{id:attack_damage,amount:0,type:attack_damage,operation:"add_value"}]}}},data:{name:[{translate:zb.zombie.name.ultimatechaoszombie,color:red}]}}

scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_min 140
scoreboard players set @n[type=zombie,tag=chosen] zombie.portalmotion_max 150

scoreboard players set @n[type=zombie,tag=chosen] zombie.health 20000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 25
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 30
scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=zombie,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_number 15
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_fade 5

scoreboard players operation @n[type=zombie,tag=chosen] zombie.max_health = @n[type=zombie,tag=chosen] zombie.health

execute as @n[type=zombie,tag=chosen] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/plan/init

tag @n[type=zombie,tag=chosen] remove chosen
