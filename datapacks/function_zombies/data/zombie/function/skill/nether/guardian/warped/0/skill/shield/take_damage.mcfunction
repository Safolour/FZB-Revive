
scoreboard players add tick zombie.nether.guardian.shieldparticle 1
execute if score tick zombie.nether.guardian.shieldparticle matches 2.. run return 0

particle end_rod ~ ~1 ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]

playsound block.anvil.land record @a ~ ~ ~ 3 2

#say as player at @s run function zombie:skill/nether/guardian/crimson/0/skill/shield/damage
execute as @p[scores={weapon.use=1..}] at @s run function zombie:skill/nether/guardian/warped/0/skill/shield/damage
