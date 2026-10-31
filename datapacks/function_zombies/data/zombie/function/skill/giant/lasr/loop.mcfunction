particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1} ^ ^ ^0.0 0 0 0 0 1 force @a[scores={particle=0..1}]
particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @a[scores={stat.player=1},distance=..1.5] as @a[scores={stat.player=1},distance=..1.5] at @s run function zombie:skill/giant/lasr/damage
execute if entity @a[scores={stat.player=1},distance=..1.5] run kill @s

execute at @s run tp @s ^ ^ ^1

particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1} ^ ^ ^0.0 0 0 0 0 1 force @a[scores={particle=0}]
particle dust_color_transition{from_color:[1,0,0],to_color:[1,1,0],scale:1} ^ ^ ^0.5 0 0 0 0 1 force @a[scores={particle=0}]

execute if entity @a[scores={stat.player=1},distance=..1.5] as @a[scores={stat.player=1},distance=..1.5] at @s run function zombie:skill/giant/lasr/damage
execute if entity @a[scores={stat.player=1},distance=..1.5] run kill @s

execute at @s run tp @s ^ ^ ^1

execute unless block ~ ~ ~ #weapon:gun_penetrable run kill @s
