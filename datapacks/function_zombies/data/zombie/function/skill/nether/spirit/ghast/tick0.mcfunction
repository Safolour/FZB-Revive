particle flame ~ ~1 ~ 0.5 0.5 0.5 0.1 1 force @a[scores={particle=0}]
particle campfire_signal_smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[scores={particle=0}]

execute store result storage zombie tp float 0.001 run scoreboard players get @s zombie.nether.spirit.ghast.skill_timer0
function zombie:skill/nether/spirit/ghast/tp with storage zombie
data remove storage zombie tp

execute unless block ~ ~ ~ #weapon:gun_penetrable run function zombie:skill/nether/spirit/ghast/explosion
