
summon ghast ~ ~ ~ {Tags:["floating","chosen","mob","hitable","zombieleft","spirit","firezb","skill.spiritghast","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0},{id:"safe_fall_distance",base:10},{id:"scale",base:0.25},{id:burning_time,base:0}],data:{name:[{translate:zb.zombie.name.nether.spirit.ghast,color:dark_aqua}]},NoAI:1b,CustomName:"Dinnerbone",CustomNameVisible:0b}

scoreboard players set @n[type=ghast,tag=chosen] zombie.health 2000
scoreboard players set @n[type=ghast,tag=chosen] zombie.armor 0

scoreboard players set @n[type=ghast,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=ghast,tag=chosen] zombie.knockresistance 100

execute as @n[type=ghast,tag=chosen] at @s run function zombie:skill/nether/spirit/ghast/init

tag @n[type=ghast,tag=chosen] remove chosen
