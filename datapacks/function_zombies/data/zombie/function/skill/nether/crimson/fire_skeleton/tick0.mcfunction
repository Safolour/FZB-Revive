scoreboard players add @s zombie.nether.crimson.fireskeleton.skill_timer 1

execute at @s run tp @s ^ ^ ^0.5
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/crimson/fire_skeleton/damage
execute at @s run tp @s ^ ^ ^0.5
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/crimson/fire_skeleton/damage
execute at @s run tp @s ^ ^ ^0.5
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/crimson/fire_skeleton/damage

particle dust_color_transition{from_color:[0.8,0,0],to_color:[1,1,0.5],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle dust_color_transition{from_color:[0.8,0,0],to_color:[1,1,0.5],scale:1} ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=0}]
particle dust_color_transition{from_color:[0.8,0,0],to_color:[1,1,0.5],scale:1} ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]

playsound entity.blaze.shoot record @a ~ ~ ~ 0.1 1

execute if score @s zombie.nether.crimson.fireskeleton.skill_timer matches 20.. run kill @s
