execute if score round game.state matches 40 at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/spirit/ghast/shield_fireball
execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle end_rod ~ ~ ~ 0 0 0 100000 1 force @a[scores={particle=1..2}]
execute unless score round game.state matches 40 run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 force @a[scores={particle=1}]

tp @s ^ ^ ^0.5
execute if score round game.state matches 40 at @s if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/spirit/ghast/shield_fireball

execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/nether/spirit/ghast/explosion0
