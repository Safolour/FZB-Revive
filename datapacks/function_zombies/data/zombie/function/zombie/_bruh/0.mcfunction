
summon zombie ~ ~ ~ {Tags:["mob","hitable","path","chosen","window_break","skill.bruh","bossbar"],attributes:[{id:"attack_damage",base:4.47}],\
equipment:{head:{id:glass,count:1},chest:{id:iron_chestplate,count:1},legs:{id:leather_leggings,count:1},feet:{id:golden_boots,count:1},mainhand:{id:dandelion,count:1},offhand:{id:snowball,count:1}}}
scoreboard players set @n[type=zombie,tag=chosen] zombie.health 400
scoreboard players set @n[type=zombie,tag=chosen] zombie.speed 030
scoreboard players set @n[type=zombie,tag=chosen] zombie.armor 015
scoreboard players set @n[type=zombie,tag=chosen] zombie.critical_extra 115
tag @n[type=zombie,tag=chosen] remove chosen