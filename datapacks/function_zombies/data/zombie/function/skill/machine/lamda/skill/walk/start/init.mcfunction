scoreboard players set @s zombie.lamda.skill_timer 0
tag @s add skill.lamda.walk
tag @s add skill.lamda.walk.start


scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function animated_java:lamda/animations/animation.model.walk_start/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target
