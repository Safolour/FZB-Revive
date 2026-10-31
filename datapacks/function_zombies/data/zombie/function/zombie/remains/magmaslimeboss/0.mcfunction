
summon magma_cube 300 92 150 {Tags:["chosen","mob","hitable","zombieleft","firezb","skill.magmaslimeboss","deathmessage","cantinstakill","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:1}],data:{name:[{translate:zb.zombie.name.remains.magmaslimeboss,color:dark_red}]},NoAI:1b,Size:0}

scoreboard players set @n[type=magma_cube,tag=chosen] zombie.health 8000
scoreboard players set @n[type=magma_cube,tag=chosen] zombie.speed 0
scoreboard players set @n[type=magma_cube,tag=chosen] zombie.armor 0

scoreboard players set @n[type=magma_cube,tag=chosen] zombie.critical_extra 150
scoreboard players set @n[type=magma_cube,tag=chosen] zombie.knockresistance 100

execute as @n[type=magma_cube,tag=chosen] at @s run function zombie:skill/remains/magmaslimeboss/init

tag @n[type=magma_cube,tag=chosen] remove chosen
