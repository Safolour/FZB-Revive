execute if score @s zombie.creation.rampart.particle matches 1.. run scoreboard players add @s zombie.creation.rampart.particle 1
execute if score @s zombie.creation.rampart.particle matches 5.. run scoreboard players set @s zombie.creation.rampart.particle 0
execute unless score @s zombie.creation.rampart.particle = @s zombie.creation.rampart.particle run scoreboard players add @s zombie.creation.rampart.particle 0

scoreboard players add @s zombie.creation.rampart 20
execute if score @s zombie.creation.rampart matches ..12000 run return 0
scoreboard players set @s zombie.creation.rampart 0
tag @s remove skill.creation.rampart.shield
effect clear @s slowness
effect give @s slowness 2 0 false
effect give @s slowness 1 1 false
playsound block.glass.break record @a ~ ~ ~ 2 0
playsound block.beacon.deactivate record @a ~ ~ ~ 2 1
particle large_smoke ~ ~1 ~ 0 0 0 0.1 20 force @a[scores={particle=0}]
particle gust ~ ~1 ~ 0 0 0 0 1 force @a[scores={particle=0}]
tag @s add hitable
tag @s add creeperdamage
tag @s add creepermotion
data merge entity @s {NoAI:0b}
scoreboard players set @s zombie.knockresistance 0
scoreboard players operation match zombie.creation.rampart.match = @s zombie.creation.rampart.match
execute as @e[type=marker,tag=skill.creation.rampart.shield] if score @s zombie.creation.rampart.match = match zombie.creation.rampart.match run scoreboard players reset @s zombie.creation.rampart
execute as @e[type=marker,tag=skill.creation.rampart.shield] if score @s zombie.creation.rampart.match = match zombie.creation.rampart.match run kill @s
scoreboard players reset match zombie.creation.rampart.match
scoreboard players reset @s zombie.creation.rampart.match
