
execute at @s run tp @s ~ ~-0.02 ~

execute unless score round game.state matches 40 run particle ominous_spawning ~ ~ ~ 0 0 0 1 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ominous_spawning ~ ~ ~ 0 0 0 1 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle ominous_spawning ~ ~ ~ 0 0 0 1 1 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle ominous_spawning ~ ~ ~ 0 10 0 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ominous_spawning ~ ~ ~ 0 10 0 0 20 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ominous_spawning ~ ~ ~ 0 10 0 0 10 force @a[scores={particle=1}]

execute unless block ~ ~ ~ #weapon:gun_penetrable positioned ~ ~0.5 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/explosion
execute if block ~ ~ ~ lava positioned ~ ~0.5 ~ run function zombie:skill/nether/guardian/warped/0/skill/labyrinth/explosion
