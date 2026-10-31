scoreboard players add loop zombie.nuclearbomb 1
tp @s ^ ^ ^1
particle dust{color:[1,0,0],scale:1} ^ ^0.1 ^ 0 0 0 0 1 force @a[scores={particle=0}]
particle dust{color:[1,0,0],scale:1} ^ ^0.1 ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set loop zombie.nuclearbomb 101
execute if score loop zombie.nuclearbomb matches ..100 at @s run function zombie:skill/creeper/nuclearbomb/loop
