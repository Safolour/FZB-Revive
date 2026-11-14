function zombie:skill/creation/origin/active
execute if score @s origin.busy matches 1 run return 0
execute if score @s origin.volley matches 1 run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run return 0
execute if score @s origin.tp_glow matches 1.. run function zombie:skill/creation/origin/tp_glow_clear
function zombie:skill/creation/origin/tool_save
scoreboard players set @s origin.tool_age 0
data merge entity @s {NoAI:1b,Glowing:1b}
team join origin.laser.dark_red @s
scoreboard players set @s origin.tool 3
scoreboard players set @s origin.laser_cd 520
playsound minecraft:entity.warden.sonic_charge hostile @a[scores={system.room=4..},distance=..80] ~ ~ ~ 2 1.5
