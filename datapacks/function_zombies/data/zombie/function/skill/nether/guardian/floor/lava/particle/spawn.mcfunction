
summon marker ~ ~1 ~ {Tags:["mob.skill","skill.guardian.floor.lava.particle","chosen"],Rotation:[0f,90f]}
execute store result entity @n[type=marker,tag=chosen] Rotation[0] int 1 run random value -180..180

execute store result score random zombie.random run random value 0..2
execute if score random zombie.random matches 0 run tag @n[type=marker,tag=chosen] add skill.guardian.floor.lava.particle.r0
execute if score random zombie.random matches 1 run tag @n[type=marker,tag=chosen] add skill.guardian.floor.lava.particle.r1
execute if score random zombie.random matches 2 run tag @n[type=marker,tag=chosen] add skill.guardian.floor.lava.particle.r2

scoreboard players reset random zombie.random
tag @n[type=marker,tag=chosen] remove chosen
