execute as @s at @s run tag @a[scores={stat.player=1},distance=..1] add skill.ultimatechaoszombie.teleport.damage

particle bubble_pop ~ ~1.2 ~ 0 0 0 0 0 force @a[scores={particle=0..1}]
particle bubble_pop ~ ~1.2 ~ 0.3 0.3 0.3 0 0 force @a[scores={particle=0}]

execute store result score random zombie.random run random value 1..8

execute if score random zombie.random matches 1 run tp @s ^0.07 ^ ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 2 run tp @s ^-0.07 ^ ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 3 run tp @s ^ ^0.07 ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 4 run tp @s ^ ^-0.07 ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 5 run tp @s ^0.07 ^0.07 ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 6 run tp @s ^0.07 ^-0.07 ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 7 run tp @s ^-0.07 ^0.07 ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]
execute if score random zombie.random matches 8 run tp @s ^-0.07 ^-0.07 ^0.1 facing entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,limit=1]

scoreboard players reset random zombie.random

execute at @s if entity @e[type=marker,tag=skill.ultimatechaoszombie.teleport.particle1,distance=..0.5] run return run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/particle/end

execute as @s at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/teleport/particle/loop
