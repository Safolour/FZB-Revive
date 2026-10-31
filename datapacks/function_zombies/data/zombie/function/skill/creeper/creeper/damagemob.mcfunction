execute if entity @e[type=marker,tag=skill.creeper.motion,distance=..3] run scoreboard players operation @s zombie.health -= creeper zombie.skill.damage
execute if entity @e[type=marker,tag=skill.creeper.motion,distance=..2] run scoreboard players operation @s zombie.health -= creeper zombie.skill.damage
execute if entity @e[type=marker,tag=skill.creeper.motion,distance=..1] run scoreboard players operation @s zombie.health -= creeper zombie.skill.damage
damage @s 0.001
