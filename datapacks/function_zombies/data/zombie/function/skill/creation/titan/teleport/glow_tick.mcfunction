scoreboard players remove @s titan.tp_glow 1
execute if score @s titan.tp_glow matches 1.. run particle minecraft:entity_effect{color:-7622688} ~ ~5 ~ 1.8 4.5 1.8 0 2 normal @a[scores={system.room=4..,particle=0}]
execute if score @s titan.tp_glow matches ..0 run function zombie:skill/creation/titan/teleport/glow_clear
