tp @s ^ ^ ^1

particle explosion ^ ^0.2 ^0.2 0 0 0 0 1 force @a[scores={particle=0}]

particle sweep_attack ^ ^0.2 ^ 0 0 0 0 2 force @a[scores={particle=0..}]
particle sweep_attack ^-1 ^0.2 ^ 0 0 0 0 2 force @a[scores={particle=0..}]
particle sweep_attack ^1 ^0.2 ^ 0 0 0 0 2 force @a[scores={particle=0..}]
particle sweep_attack ^-2 ^0.2 ^ 0 0 0 0 2 force @a[scores={particle=0..}]
particle sweep_attack ^2 ^0.2 ^ 0 0 0 0 2 force @a[scores={particle=0..}]

playsound block.copper.break record @a ~ ~ ~ 2 1

execute as @a[scores={stat.player=1},distance=..3] at @s run function zombie:skill/chaos/chaos_golem/skill/hit_ground/damage
