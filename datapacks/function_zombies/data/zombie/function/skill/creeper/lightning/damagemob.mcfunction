execute if entity @e[type=marker,tag=skill.creeper.motion,distance=..5] run scoreboard players operation @s zombie.health -= lightningcreeper zombie.skill.damage
execute if entity @e[type=marker,tag=skill.creeper.motion,distance=..3] run scoreboard players operation @s zombie.health -= lightningcreeper zombie.skill.damage
execute if entity @e[type=marker,tag=skill.creeper.motion,distance=..1] run scoreboard players operation @s zombie.health -= lightningcreeper zombie.skill.damage
damage @s 0.001
