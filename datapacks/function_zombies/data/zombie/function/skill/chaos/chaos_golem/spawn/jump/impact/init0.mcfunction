tp @s ^ ^ ^1

particle sweep_attack ~ ~0.2 ~ 0 0 0 0 2 force @a[scores={particle=0..}]

playsound block.copper.break record @a ~ ~ ~ 2 1

execute as @a[scores={stat.player=1},distance=..2] run function zombie:skill/chaos/chaos_golem/spawn/damage
