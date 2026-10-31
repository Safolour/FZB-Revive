function map:area/lab/temperature/purify

execute as @a[scores={system.room=4..}] at @s run playsound entity.zombie_villager.cure record @s ~ ~ ~ 10 2
execute as @a[scores={system.room=4..}] at @s run particle white_smoke ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]

effect give @e[tag=mob] slowness 5 3 false
execute as @e[tag=mob] at @s run particle white_smoke ~ ~1 ~ 0 0 0 0.1 30 force @a[scores={particle=0}]
