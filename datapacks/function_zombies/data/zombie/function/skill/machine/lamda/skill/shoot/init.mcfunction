scoreboard players set @s zombie.lamda.skill_timer 0
tag @s add skill.lamda.shoot0

effect give @s slowness infinite 255 true

scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function animated_java:lamda/animations/animation.model.shoot/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target

playsound minecraft:entity.evoker.prepare_attack record @a ~ ~ ~ 2 1.4
particle angry_villager ~ ~1.2 ~ 0.3 0.3 0.3 0 20 force @a[scores={particle=0}]
