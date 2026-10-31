scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function zombie:skill/machine/lamda/skill/damage/model/normal0

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target
