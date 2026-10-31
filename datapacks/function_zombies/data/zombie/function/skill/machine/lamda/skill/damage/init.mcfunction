
scoreboard players operation match zombie.number = @s zombie.lamda.match

execute as @e[type=zombie,tag=skill.lamda] if score @s zombie.lamda.match = match zombie.number run tag @s add target
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=zombie,tag=target] run function zombie:skill/machine/lamda/skill/damage/init0

execute if score @s zombie.health matches 1.. run scoreboard players operation @e[type=zombie,tag=target] zombie.health = @s zombie.health


scoreboard players reset match zombie.number
tag @e[type=zombie] remove target
tag @e[type=item_display] remove target
