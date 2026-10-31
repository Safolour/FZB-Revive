#@e[type=marker,tag=skill.creation.rampart.shield]
scoreboard players operation match zombie.creation.rampart.match = @s zombie.creation.rampart.match
execute as @e[type=zombie,tag=skill.creation.rampart.shield] if score @s zombie.creation.rampart.match = match zombie.creation.rampart.match run tag @s add target

#execute as @e[type=zombie,tag=target] run tellraw @a [{score:{name:damage,objective:weapon.state}}]
scoreboard players operation @e[type=zombie,tag=target] weapon.state += damage zombie.creation.rampart

scoreboard players reset match zombie.creation.rampart.match

execute if score @s zombie.creation.rampart.particle matches 1.. run return fail
execute if score @s zombie.creation.rampart.particle matches 0 run scoreboard players set @s zombie.creation.rampart.particle 1
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
playsound block.glass.break record @a ~ ~ ~ 2 2
