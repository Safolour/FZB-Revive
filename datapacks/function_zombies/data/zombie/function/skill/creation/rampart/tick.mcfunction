execute if entity @s[tag=skill.creation.rampart.shield] run function zombie:skill/creation/rampart/tick0
scoreboard players add @s zombie.creation.rampart 1
execute store result score random zombie.random run random value 0..5
execute if score @s zombie.creation.rampart matches ..380 if score random zombie.random matches 0 run scoreboard players add @s zombie.creation.rampart 4
execute if score @s zombie.creation.rampart matches ..380 if score random zombie.random matches 0 run scoreboard players add @s zombie.creation.rampart 10
scoreboard players reset random zombie.random
execute if score @s zombie.creation.rampart matches ..500 run return fail
execute unless entity @s[tag=skill.creation.rampart.shield] if entity @e[type=marker,tag=skill.creation.rampart.shield,distance=..7] run return run scoreboard players remove @s zombie.creation.rampart 200
execute if entity @s[tag=skill.creation.rampart.shield] run return fail
tag @s add skill.creation.rampart.shield
scoreboard players set @s zombie.creation.rampart 10000
playsound entity.illusioner.prepare_mirror record @a ~ ~ ~ 2 1.5
playsound entity.illusioner.prepare_mirror record @a ~ ~ ~ 2 1.5
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle explosion ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle firework ~ ~1 ~ 0 0 0 0.2 20 force @a[scores={particle=0}]
effect give @s slowness infinite 255 true
playsound block.beacon.activate record @a ~ ~ ~ 2 1
tag @s remove hitable
tag @s remove creeperdamage
tag @s remove creepermotion
data merge entity @s {NoAI:1b}
scoreboard players set @s zombie.knockresistance 100
summon marker ~ ~ ~ {Tags:["mob.skill","skill.creation.rampart.shield","hitable"]}
scoreboard players add @e[type=marker,tag=skill.creation.rampart.shield] zombie.creation.rampart.match 1
scoreboard players add @e[type=zombie,tag=skill.creation.rampart.shield] zombie.creation.rampart.match 1
