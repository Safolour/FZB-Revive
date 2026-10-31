
scoreboard players add loop zombie.creation.electrification 1
tp @s ^ ^ ^1
particle electric_spark ~ ~ ~ 0.25 0.25 0.25 0.1 1 force @a[scores={particle=0}]
particle enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0 1 force @a[scores={particle=0..1}]
particle firework ~ ~ ~ 0.25 0.25 0.25 0.01 1 force @a[scores={particle=0}]
execute positioned ~ ~-1 ~ as @a[scores={stat.player=1},distance=..1.5] run function zombie:skill/creation/electrification/damage
execute unless block ~ ~ ~ #weapon:gun_penetrable run kill @s
execute if score loop zombie.creation.electrification matches ..7 at @s run function zombie:skill/creation/electrification/loop
