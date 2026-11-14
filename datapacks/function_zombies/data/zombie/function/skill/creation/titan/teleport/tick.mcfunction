# combo_age is wall-clock ticks from the source debris, including overlapping casts.
scoreboard players add @s titan.combo_age 1
execute if score @s titan.tp_glow matches 1.. run function zombie:skill/creation/titan/teleport/glow_tick
execute if entity @s[tag=titan.tp.active] run scoreboard players remove @s titan.tp_cd 1
execute if entity @s[tag=titan.tp.active] run return run function zombie:skill/creation/titan/teleport/cast_tick
# Pause the residual timer for the union of active cast ticks, never double-count overlap.
scoreboard players set #combo.busy titan.cfg 0
execute if entity @s[tag=titan.scatter.cast] run scoreboard players set #combo.busy titan.cfg 1
execute if entity @s[tag=titan.sword.cast] run scoreboard players set #combo.busy titan.cfg 1
execute if entity @s[tag=titan.scatter.cast] run function zombie:skill/creation/titan/scatter/tick
execute if entity @s[tag=titan.sword.cast] run function zombie:skill/creation/titan/sword/cast_tick
# Independent pending bits: 1=sword, 2=scatter, 3=both. Retry only while no target is near.
execute if score @s titan.followup matches 2.. if score @s titan.combo_age matches 20.. run function zombie:skill/creation/titan/combo/scatter
execute if score @s titan.followup matches 1 if score @s titan.combo_age matches 40.. run function zombie:skill/creation/titan/combo/sword
execute if score @s titan.followup matches 3 if score @s titan.combo_age matches 40.. run function zombie:skill/creation/titan/combo/sword
execute if score #combo.busy titan.cfg matches 0 run scoreboard players remove @s titan.tp_cd 1
execute if entity @s[tag=titan.scatter.cast] run return 0
execute if entity @s[tag=titan.sword.cast] run return 0
execute if score @s titan.followup matches 1.. run return 0
execute if score #combo.busy titan.cfg matches 1 run return 0
execute if score @s titan.tp_cd matches ..0 run function zombie:skill/creation/titan/teleport/start
