
execute unless score round game.state matches 40 run particle ominous_spawning ~ ~1 ~ 0 0 0 3 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ominous_spawning ~ ~1 ~ 0 0 0 3 5 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ominous_spawning ~ ~1 ~ 0 0 0 3 2 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle ominous_spawning ~ ~1 ~ 0 0 0 3 1 force @a[scores={particle=1}]

scoreboard players add @s zombie.nether.guardian.shockwave 1

execute if score @s zombie.nether.guardian.shockwave matches 40 run function zombie:skill/nether/guardian/warped/0/skill/attract/shockwave
execute if score @s zombie.nether.guardian.shockwave matches 65 run function zombie:skill/nether/guardian/warped/0/skill/attract/shockwave
execute if score @s zombie.nether.guardian.shockwave matches 90 run function zombie:skill/nether/guardian/warped/0/skill/attract/shockwave

execute if score @s zombie.nether.guardian.shockwave matches 100 run function zombie:skill/nether/guardian/warped/0/skill/attract/end
