scoreboard players add loop zombie.nether.guardian.eye 1
execute at @s run tp @s ^ ^ ^0.5
particle flame ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle flame ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @p[tag=target,distance=..2] as @p[tag=target,distance=..2] run function zombie:skill/nether/guardian/floor/eye/damage
execute if entity @p[tag=target,distance=..2] run scoreboard players set loop zombie.nether.guardian.eye 100

execute if score loop zombie.nether.guardian.eye matches ..50 at @s run function zombie:skill/nether/guardian/floor/eye/loop
