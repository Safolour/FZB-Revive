
execute at @s run tp @s ~ ~-0.02 ~

particle ominous_spawning ~ ~ ~ 0 0 0 1 1 force @a[scores={particle=0}]

particle ominous_spawning ~ ~ ~ 0 10 0 0 20 force @a[scores={particle=0}]

execute unless block ~ ~ ~ #weapon:gun_penetrable positioned ~ ~0.5 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/explosion
execute if block ~ ~ ~ lava positioned ~ ~0.5 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/explosion
