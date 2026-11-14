scoreboard players add @s origin.phase_age 1
execute if score @s origin.phase_age matches 8.. run tp @s ~ ~ ~ 0 0
execute if score @s origin.phase_age matches 8.. run data merge entity @s {NoAI:1b,NoGravity:1b,Glowing:1b,Motion:[0d,0d,0d]}
execute if score @s origin.phase_age matches 8 run function zombie:skill/creation/titan/eclipse/warning
execute if score @s origin.phase_age matches 48 run function zombie:skill/creation/titan/eclipse/summon
execute if score @s origin.phase_age matches 68 run function zombie:skill/creation/titan/eclipse/cast_finish
