scoreboard players add @s zombie.nether.ashes.ashskeleton.skill_timer 1

execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/ashes/ash_skeleton/shield_hit
execute at @s run tp @s ^ ^ ^0.5
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/ashes/ash_skeleton/shield_hit
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/ashes/ash_skeleton/damage
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/ashes/ash_skeleton/shield_hit
execute at @s run tp @s ^ ^ ^0.5
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/ashes/ash_skeleton/shield_hit
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/ashes/ash_skeleton/damage
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/ashes/ash_skeleton/shield_hit
execute at @s run tp @s ^ ^ ^0.5
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/ashes/ash_skeleton/shield_hit
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/ashes/ash_skeleton/damage

execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,1],scale:1} ^ ^ ^-1 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle ash ^ ^ ^ 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ^ ^ ^ 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ^ ^ ^ 0.1 0.1 0.1 0.1 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle ash ^ ^ ^-0.5 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ^ ^ ^-0.5 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ^ ^ ^-0.5 0.1 0.1 0.1 0.1 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle ash ^ ^ ^-1 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ^ ^ ^-1 0.1 0.1 0.1 0.1 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle ash ^ ^ ^-1 0.1 0.1 0.1 0.1 5 force @a[scores={particle=1}]

execute if score @s zombie.nether.ashes.ashskeleton.skill_timer matches 20.. run kill @s
