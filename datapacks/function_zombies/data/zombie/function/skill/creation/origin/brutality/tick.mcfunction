scoreboard players remove @s origin.pulse 1
execute unless score @s origin.pulse matches ..0 run return 0
scoreboard players set @s origin.pulse 20
function zombie:skill/creation/origin/melee_config
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..2] run return 0
tag @s add origin.brutality.attacker
tag @s add origin.brutality.swing
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..2] at @s run function zombie:skill/creation/origin/brutality/hit
tag @s remove origin.brutality.attacker
