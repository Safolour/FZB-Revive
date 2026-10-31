scoreboard players add loop zombie.nether.guardian.suspense.laser 1

particle wax_off ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle wax_off ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=0}]
tp @s ^ ^ ^0.5

execute positioned ~ ~-2 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/damage

execute if score loop zombie.nether.guardian.suspense.laser matches ..20 at @s run function zombie:skill/nether/guardian/crimson/0/skill/suspense/loop
