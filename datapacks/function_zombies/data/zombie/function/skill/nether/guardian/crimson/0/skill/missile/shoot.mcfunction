particle flash ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ^ ^ ^0.5 0 0 0 2 3 force @a[scores={particle=0}]
particle end_rod ^ ^ ^0.5 0 0 0 0.2 5 force @a[scores={particle=0}]
particle trial_spawner_detection ^ ^ ^0.5 0 0 0 0 5 force @a[scores={particle=0}]

playsound item.trident.thunder record @a ~ ~ ~ 3 2
playsound entity.wither.hurt record @a ~ ~ ~ 3 2

tp @e[type=armor_stand,tag=skill.crimsonguardian.match] ~ ~ ~ facing entity @p[scores={stat.player=1}]
execute if score @s zombie.nether.guardian.missile matches 20 rotated ~ 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 20 rotated ~10 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 20 rotated ~-10 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile

execute if score @s zombie.nether.guardian.missile matches 40 rotated ~5 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 40 rotated ~-5 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 40 rotated ~15 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 40 rotated ~-15 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile

execute if score @s zombie.nether.guardian.missile matches 60 rotated ~ 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 60 rotated ~10 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 60 rotated ~-10 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 60 rotated ~20 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
execute if score @s zombie.nether.guardian.missile matches 60 rotated ~-20 0 run function zombie:skill/nether/guardian/crimson/0/skill/missile/projectile
