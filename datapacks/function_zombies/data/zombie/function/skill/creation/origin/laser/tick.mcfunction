scoreboard players add @s origin.tool_age 1
execute if score @s origin.tool_age matches 1..3 if entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run tp @s ~ ~ ~ facing entity @p[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] eyes
execute if score @s origin.tool_age matches 1..22 run function zombie:skill/creation/origin/laser/charge
execute if score @s origin.tool_age matches 29 run function zombie:skill/creation/origin/laser/fire
execute if score @s origin.tool_age matches 39.. run function zombie:skill/creation/origin/laser/finish
