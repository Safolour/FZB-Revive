scoreboard players add @s zombie.nether.guardian.missile 1
tp @s ^ ^ ^0.35
execute unless score round game.state matches 40 run particle flame ~ ~ ~ 0.05 0.05 0.05 0.03 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0.05 0.05 0.05 0.03 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flame ~ ~ ~ 0.05 0.05 0.05 0.03 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle smoke ~ ~ ~ 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle smoke ~ ~ ~ 0.05 0.05 0.05 0 4 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle smoke ~ ~ ~ 0.05 0.05 0.05 0 2 force @a[scores={particle=1}]

execute if entity @a[scores={stat.player=1},distance=..0.5] run function zombie:skill/nether/guardian/crimson/0/skill/missile/damage

execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/nether/guardian/crimson/0/skill/missile/explosion

execute if score @s zombie.nether.guardian.missile matches 100.. run function zombie:skill/nether/guardian/crimson/0/skill/missile/explosion
