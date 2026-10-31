
tag @s add chosen
execute as @e[tag=mob,distance=..5] at @s facing entity @n[type=marker,tag=chosen] eyes positioned ^ ^ ^1 rotated as @n[type=marker,tag=chosen] positioned ^ ^ ^1 if entity @s[distance=..1.25] run function weapon:range/gun/gun/airgun/wave/push0
tag @s remove chosen