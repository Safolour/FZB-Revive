scoreboard players add @s zombie.nether.ashes.meteor.skill_timer 1

execute unless score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.1 2 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.1 1 force @a[scores={particle=1}]
tp @s ^ ^ ^1

scoreboard players operation match zombie.nether.ashes.meteor.match = @s zombie.nether.ashes.meteor.match
execute as @e[type=block_display,tag=skill.meteor.1] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target
execute as @e[type=block_display,tag=skill.meteor.2] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target

tp @e[type=block_display,tag=target,tag=skill.meteor.1] ~ ~ ~
tp @e[type=block_display,tag=target,tag=skill.meteor.2] ~ ~ ~ ~ ~

scoreboard players reset match zombie.nether.ashes.meteor.match
tag @e[type=block_display,tag=target] remove target


#execute if entity @a[scores={stat.player=1},distance=..3] run function zombie:skill/nether/ashes/meteor/explosion
execute if score @s zombie.nether.ashes.meteor.skill_timer matches 5.. unless block ~ ~-1 ~ #weapon:gun_penetrable run function zombie:skill/nether/ashes/meteor/explosion

execute if score @s zombie.nether.ashes.meteor.skill_timer matches ..100 run return 0


scoreboard players operation match zombie.nether.ashes.meteor.match = @s zombie.nether.ashes.meteor.match
execute as @e[type=block_display,tag=skill.meteor.1] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target
execute as @e[type=block_display,tag=skill.meteor.2] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target

kill @e[type=block_display,tag=target]

scoreboard players reset match zombie.nether.ashes.meteor.match
tag @e[type=block_display,tag=target] remove target
kill @s
