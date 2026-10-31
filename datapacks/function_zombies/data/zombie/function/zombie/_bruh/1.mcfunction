
summon zombie ~ ~ ~ {Tags:["mob","hitable","path","chosen","window_break","bossbar"],attributes:[{id:"attack_damage",base:4.47}],\
equipment:{head:{id:glass,count:1},chest:{id:iron_chestplate,count:1},legs:{id:leather_leggings,count:1},feet:{id:golden_boots,count:1},mainhand:{id:dandelion,count:1},offhand:{id:snowball,count:1}}}
scoreboard players set @n[type=zombie,tag=chosen] zombie.health 5000
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 030
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 015
scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 115
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_number 100
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_stay 10
scoreboard players set @n[type=zombie,tag=chosen] zombie.bossbar_speed_fade 1
tag @n[type=zombie,tag=chosen] remove chosen