scoreboard players remove @s origin.tp_glow 1
execute if score @s origin.tp_glow matches 1.. at @s run particle entity_effect{color:-7622688} ~ ~0.95 ~ 0.24 0.45 0.24 0 2 normal @a[scores={particle=0},distance=..48]
execute if score @s origin.tp_glow matches 1 if entity @s[team=origin.red] run team join origin.white @s
execute if score @s origin.tp_glow matches ..0 run function zombie:skill/creation/origin/tp_glow_clear
