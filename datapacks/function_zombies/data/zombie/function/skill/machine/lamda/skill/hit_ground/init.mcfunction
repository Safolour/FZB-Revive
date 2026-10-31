scoreboard players set @s zombie.lamda.skill_timer 0
tag @s add skill.lamda.hitground0

effect give @s slowness infinite 255 true

scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function animated_java:lamda/animations/animation.model.hit_ground/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target

playsound entity.illusioner.prepare_blindness record @a ~ ~ ~ 2 1.4
playsound entity.illusioner.prepare_blindness record @a ~ ~ ~ 2 1.4
