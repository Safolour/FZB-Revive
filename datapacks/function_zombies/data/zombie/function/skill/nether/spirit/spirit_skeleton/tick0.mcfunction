scoreboard players add @s zombie.nether.spirit.spiritskeleton.skill_timer 1

execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/spirit/spirit_skeleton/shield_hit
execute at @s run tp @s ^ ^ ^0.5
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/spirit/spirit_skeleton/shield_hit
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/spirit/spirit_skeleton/damage
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/spirit/spirit_skeleton/shield_hit
execute at @s run tp @s ^ ^ ^0.5
execute if score round game.state matches 40 at @s positioned ~ ~-1.5 ~ if entity @e[type=marker,tag=firelord.p2.safe,distance=..5] run return run function zombie:skill/nether/spirit/spirit_skeleton/shield_hit
execute at @s positioned ~ ~-1.5 ~ if entity @a[scores={stat.player=1},distance=..0.8] as @a[scores={stat.player=1},distance=..0.8] run function zombie:skill/nether/spirit/spirit_skeleton/damage


scoreboard players add @s zombie.nether.spirit.spiritskeleton.skill_timer0 1

#execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 0 at @s run tp @s ~ ~ ~ ~40 ~

execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 1 at @s run tp @s ~ ~ ~ ~-40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 2 at @s run tp @s ~ ~ ~ ~40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 3 at @s run tp @s ~ ~ ~ ~40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 4 at @s run tp @s ~ ~ ~ ~-40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 5 at @s run tp @s ~ ~ ~ ~-40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 6 at @s run tp @s ~ ~ ~ ~40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 7 at @s run tp @s ~ ~ ~ ~40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 8 at @s run tp @s ~ ~ ~ ~-40 ~
execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 8 at @s run tp @s ~ ~ ~ ~-40 ~

execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer0 matches 9 run scoreboard players set @s zombie.nether.spirit.spiritskeleton.skill_timer0 1

execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^ 0 0 0 0 3 force @a[scores={particle=0..1}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^ 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^-0.5 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^-0.5 0 0 0 0 3 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=1}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1,1,1],to_color:[0.5,0.5,0.5],scale:1.5} ^ ^ ^-0.5 0 0 0 0 1 force @a[scores={particle=1}]

execute unless score round game.state matches 40 run particle sculk_soul ^ ^ ^-0.25 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ^ ^ ^-0.25 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ^ ^ ^-0.25 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle sculk_soul ^ ^ ^-0.75 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle sculk_soul ^ ^ ^-0.75 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle sculk_soul ^ ^ ^-0.75 0 0 0 0 1 force @a[scores={particle=1}]

execute if score @s zombie.nether.spirit.spiritskeleton.skill_timer matches 40.. run kill @s
