particle flame ^ ^1.9 ^-0.2 0.05 0.05 0.05 0.1 1 force @a[scores={particle=0}]

execute if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/machine/fusion/drain
