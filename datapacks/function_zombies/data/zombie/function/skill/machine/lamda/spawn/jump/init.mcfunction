
tag @s add skill.lamda.spawn.jump
scoreboard players set @s zombie.lamda.skill_timerspawn 0

effect give @s slowness infinite 255 true


scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=aj.lamda.root,tag=target] at @s run function animated_java:lamda/animations/animation.model.jump/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target
