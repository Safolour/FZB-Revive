# This enhanced proximity hit is distinct from the vanilla zombie's own attack.
# Generic events repeat at roughly 540..570 ms; use 11 ticks and allow another
# attempt next tick when nobody is in range. Casting/teleport guards live here.
scoreboard players remove @s titan.melee_cd 1
execute if entity @s[tag=titan.awaiting] run return 0
execute if entity @s[tag=titan.tp.active] if score @s titan.tp_age matches 5..11 run return 0
execute if entity @s[tag=titan.eclipse.cast] run return 0
execute if entity @s[tag=titan.scatter.cast] run return 0
execute if entity @s[tag=titan.sword.cast] run return 0
execute if entity @s[tag=titan.lightning.cast] run return 0
execute unless score @s titan.melee_cd matches ..0 run return 0
execute unless entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..7] run return 0
scoreboard players set @s titan.melee_cd 11
execute as @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..7] at @s run function zombie:skill/creation/titan/melee/hit
