
scoreboard players add loop zombie.rainbow 1
tp @s ^ ^ ^1
execute if score random zombie.rainbow matches 0 run particle dust{color:[1,0,0],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 0 run particle dust{color:[1,0,0],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 1 run particle dust{color:[0,1,0],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 1 run particle dust{color:[0,1,0],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 2 run particle dust{color:[0,0,1],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 2 run particle dust{color:[0,0,1],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 3 run particle dust{color:[1,1,0],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 3 run particle dust{color:[1,1,0],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 4 run particle dust{color:[0,1,1],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 4 run particle dust{color:[0,1,1],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 5 run particle dust{color:[0.5,0,1],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 5 run particle dust{color:[0.5,0,1],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 6 run particle dust{color:[1,0.5,0],scale:0.8} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score random zombie.rainbow matches 6 run particle dust{color:[1,0.5,0],scale:0.8} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..1] run scoreboard players set loop zombie.rainbow 16
execute positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..1] as @a[scores={stat.player=1},distance=..1] run function zombie:skill/rainbow/shotgun/damage
execute unless block ~ ~ ~ #weapon:gun_penetrable run scoreboard players set @s zombie.rainbow 5
execute if score loop zombie.rainbow matches ..6 at @s run function zombie:skill/rainbow/shotgun/loop
