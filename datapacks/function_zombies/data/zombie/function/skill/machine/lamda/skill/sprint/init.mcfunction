scoreboard players set @s zombie.lamda.skill_timer 0
tag @s add skill.lamda.sprint0

effect give @s slowness infinite 255 true

scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function animated_java:lamda/animations/animation.model.sprint/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target

playsound entity.breeze.shoot record @a ~ ~ ~ 2 0
playsound entity.breeze.shoot record @a ~ ~ ~ 2 0
