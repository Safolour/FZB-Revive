
summon ghast 300 101 126 {Tags:["floating","chosen","mob","hitable","zombieleft","bossbar","firezb","skill.dropship","deathmessage","cantinstakill","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"scale",base:0.5}],data:{name:[{translate:zb.zombie.name.remains.dropship,color:red}]},NoAI:1b}

scoreboard players set @n[type=ghast,tag=chosen] zombie.health 6000
scoreboard players set @n[type=ghast,tag=chosen] zombie.armor 0

scoreboard players set @n[type=ghast,tag=chosen] zombie.critical_extra 100
scoreboard players set @n[type=ghast,tag=chosen] zombie.knockresistance 100

scoreboard players set @n[type=ghast,tag=chosen] zombie.bossbar_number 60
scoreboard players set @n[type=ghast,tag=chosen] zombie.bossbar_speed_stay 5
scoreboard players set @n[type=ghast,tag=chosen] zombie.bossbar_speed_fade 2

execute as @n[type=ghast,tag=chosen] at @s run function zombie:skill/remains/dropship/init_m

tag @n[type=ghast,tag=chosen] remove chosen
