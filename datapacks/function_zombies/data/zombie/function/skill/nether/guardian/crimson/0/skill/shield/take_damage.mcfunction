
scoreboard players add tick zombie.nether.guardian.shieldparticle 1
execute if score tick zombie.nether.guardian.shieldparticle matches 2.. run return 0

execute unless score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle end_rod ~ ~1 ~ 0 0 0 0.2 15 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=1}]

playsound block.anvil.land record @a ~ ~ ~ 3 2

#say as player at @s run function zombie:skill/nether/guardian/crimson/0/skill/shield/damage
execute as @p[scores={weapon.use=1..}] at @s run function zombie:skill/nether/guardian/crimson/0/skill/shield/damage
