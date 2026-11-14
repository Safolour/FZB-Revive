# Draw the moving point once per tick; score velocities use 1/1000 block per tick.
particle dust_color_transition{from_color:[1.0,1.0,1.0],to_color:[0.0,0.8157,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[1.0,1.0,1.0],to_color:[0.0,0.8157,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
execute if predicate zombie:firelord_medium_particle run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
scoreboard players add @s zombie.skill_timer 1
# Move each horizontal axis separately and stop that component at a solid block.
execute store result score #soul.old zombie.motionx run data get entity @s Pos[0] 1000
scoreboard players operation #soul.next zombie.motionx = #soul.old zombie.motionx
scoreboard players operation #soul.next zombie.motionx += @s zombie.motionx
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #soul.next zombie.motionx
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ soul_fire run function zombie:skill/nether/firelord/p4/legion/soul_block_x
execute store result score #soul.old zombie.motionz run data get entity @s Pos[2] 1000
scoreboard players operation #soul.next zombie.motionz = #soul.old zombie.motionz
scoreboard players operation #soul.next zombie.motionz += @s zombie.motionz
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #soul.next zombie.motionz
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ soul_fire run function zombie:skill/nether/firelord/p4/legion/soul_block_z
execute store result score #soul.old zombie.motiony run data get entity @s Pos[1] 1000
scoreboard players operation #soul.next zombie.motiony = #soul.old zombie.motiony
scoreboard players operation #soul.next zombie.motiony += @s zombie.motiony
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #soul.next zombie.motiony
execute at @s if score @s zombie.motiony matches ..0 unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ soul_fire positioned ~ ~1 ~ align y run return run function zombie:skill/nether/firelord/p4/legion/soul_spawn
execute at @s if score @s zombie.motiony matches 1.. unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ soul_fire run function zombie:skill/nether/firelord/p4/legion/soul_block_y
scoreboard players remove @s zombie.motiony 46
# Avoid leaving a pending soul indefinitely if the floor or chunks disappear.
execute if score @s zombie.skill_timer matches 60.. at @s align y run function zombie:skill/nether/firelord/p4/legion/soul_spawn
