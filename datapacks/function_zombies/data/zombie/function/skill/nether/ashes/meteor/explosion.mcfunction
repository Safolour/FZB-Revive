scoreboard players set @s zombie.nether.ashes.meteor.skill_timer 101

scoreboard players operation match zombie.nether.ashes.meteor.match = @s zombie.nether.ashes.meteor.match
execute as @e[type=block_display,tag=skill.meteor.1] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target
execute as @e[type=block_display,tag=skill.meteor.2] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target

kill @e[type=block_display,tag=target]

scoreboard players reset match zombie.nether.ashes.meteor.match
tag @e[type=block_display,tag=target] remove target

tag @s add target

execute if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] run function zombie:skill/nether/ashes/meteor/motion

tag @s remove target

execute if entity @a[scores={stat.player=1},distance=..3] as @a[scores={stat.player=1},distance=..3] run function zombie:skill/nether/ashes/meteor/damage


kill @s

execute unless score round game.state matches 40 run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score round game.state matches 40 if predicate zombie:firelord_medium_particle run particle flash ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle large_smoke ~ ~ ~ 0 0 0 0.2 15 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle lava ~ ~ ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle lava ~ ~ ~ 0.5 0.5 0.5 0 10 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle lava ~ ~ ~ 0.5 0.5 0.5 0 5 force @a[scores={particle=1}]
execute unless score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.2 30 force @a[scores={particle=0}]
execute if score round game.state matches 40 run particle flame ~ ~ ~ 0 0 0 0.2 15 force @a[scores={particle=1}]
function zombie:skill/nether/ashes/meteor/particle

playsound block.end_gateway.spawn record @a ~ ~ ~ 1.5 0
playsound block.end_gateway.spawn record @a ~ ~ ~ 1.5 1
