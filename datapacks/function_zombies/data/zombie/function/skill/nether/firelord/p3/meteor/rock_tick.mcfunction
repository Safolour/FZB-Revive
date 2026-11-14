summon marker ~ ~ ~ {Tags:["firelord.meteor.trace"]}
scoreboard players add @s zombie.skill.damage 1
execute if score @s zombie.skill.damage matches 9.. run scoreboard players set @s zombie.skill.damage 1
execute if score @s zombie.skill.damage matches 1 run data modify entity @s transformation.left_rotation set value [0.000000f,0f,0.000000f,1.000000f]
execute if score @s zombie.skill.damage matches 2 run data modify entity @s transformation.left_rotation set value [0.270598f,0f,0.270598f,0.923880f]
execute if score @s zombie.skill.damage matches 3 run data modify entity @s transformation.left_rotation set value [0.500000f,0f,0.500000f,0.707107f]
execute if score @s zombie.skill.damage matches 4 run data modify entity @s transformation.left_rotation set value [0.653281f,0f,0.653281f,0.382683f]
execute if score @s zombie.skill.damage matches 5 run data modify entity @s transformation.left_rotation set value [0.707107f,0f,0.707107f,0.000000f]
execute if score @s zombie.skill.damage matches 6 run data modify entity @s transformation.left_rotation set value [0.653281f,0f,0.653281f,-0.382683f]
execute if score @s zombie.skill.damage matches 7 run data modify entity @s transformation.left_rotation set value [0.500000f,0f,0.500000f,-0.707107f]
execute if score @s zombie.skill.damage matches 8 run data modify entity @s transformation.left_rotation set value [0.270598f,0f,0.270598f,-0.923880f]
scoreboard players add @s zombie.skill_timer 1
particle small_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle small_flame ~ ~ ~ 0 0 0 0.05 1 force @a[scores={particle=1}]
particle large_smoke ~ ~ ~ 0 0 0 0.03 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle large_smoke ~ ~ ~ 0 0 0 0.03 1 force @a[scores={particle=1}]
particle dust_color_transition{from_color:[0.94,0.06,0.0],to_color:[1.0,0.86,0.42],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if predicate zombie:firelord_medium_particle run particle dust_color_transition{from_color:[0.94,0.06,0.0],to_color:[1.0,0.86,0.42],scale:1.5} ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=1}]
tp @s ~ ~-1.07143 ~-0.07143
execute at @e[type=marker,tag=firelord.meteor.trace,sort=nearest,limit=1] run function zombie:skill/nether/firelord/p2/meteor/shield_trace
kill @e[type=marker,tag=firelord.meteor.trace,sort=nearest,limit=1,distance=..3]
execute if score @s zombie.skill_timer matches 14.. run kill @s
