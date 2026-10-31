
summon blaze ~ ~ ~ {Tags:["floating","chosen","mob","hitable","zombieleft","firezb","skill.blaze","cantpuncher","cantgyro"],attributes:[{id:"attack_damage",base:0}],data:{name:[{translate:zb.zombie.name.remains.blaze,color:yellow}]},NoAI:1b,NoGravity:1b}

scoreboard players set @n[type=blaze,tag=chosen] zombie.health 3000
scoreboard players set @n[type=blaze,tag=chosen] zombie.armor 0

scoreboard players set @n[type=blaze,tag=chosen] zombie.critical_extra 200
scoreboard players set @n[type=blaze,tag=chosen] zombie.knockresistance 100

execute as @n[type=blaze,tag=chosen] at @s run function zombie:skill/remains/blaze/init

tag @n[type=blaze,tag=chosen] remove chosen
