execute at @e[type=marker,tag=origin.destination,limit=1] run function zombie:skill/creation/origin/fx
execute at @e[type=marker,tag=origin.destination,limit=1] run playsound minecraft:entity.magma_cube.hurt hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 1.5 1
scoreboard players remove @s zombie.skill_timer 1
execute if score @s zombie.skill_timer matches 1 run function zombie:skill/creation/origin/reveal
execute if score @s zombie.skill_timer matches ..0 run function zombie:skill/creation/origin/arrive
