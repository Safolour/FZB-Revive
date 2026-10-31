particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 100000 1 force @a[scores={particle=1..2}]
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 2 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 2 force @a[scores={particle=0}]

tp @s ^ ^ ^0.5

execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/nether/spirit/ghast/explosion0
