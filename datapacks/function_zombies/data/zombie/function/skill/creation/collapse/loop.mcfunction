scoreboard players add loop zombie.creation.collapse 1
tp @s ^ ^ ^1
particle dust{color:[1,0,0],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle dust{color:[1,0,0],scale:1} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set loop zombie.creation.collapse 101
execute if score loop zombie.creation.collapse matches ..100 at @s run function zombie:skill/creation/collapse/loop
