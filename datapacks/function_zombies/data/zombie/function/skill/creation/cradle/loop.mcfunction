
scoreboard players add loop zombie.creation.cradle 1
tp @s ^ ^ ^1
particle enchant ^ ^ ^1 0 0 0 0 1 force @a[scores={particle=0}]
particle enchant ^ ^ ^0.25 0 0 0 0 1 force @a[scores={particle=0}]
particle enchant ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
particle enchant ^ ^ ^0.75 0 0 0 0 1 force @a[scores={particle=0}]
execute if entity @a[scores={stat.player=1},gamemode=adventure,distance=..2] run scoreboard players set loop zombie.creation.cradle 14
execute if entity @a[scores={stat.player=1},gamemode=adventure,distance=..2] as @a[scores={stat.player=1},gamemode=adventure,distance=..2] at @s run function zombie:skill/creation/cradle/damage
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set loop zombie.creation.cradle 14
execute if score loop zombie.creation.cradle matches ..15 at @s run function zombie:skill/creation/cradle/loop
