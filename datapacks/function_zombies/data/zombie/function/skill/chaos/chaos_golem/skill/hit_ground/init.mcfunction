scoreboard players set @s zombie.chaos.chaos_golem.skill_timer 0
tag @s add skill.chaosgolem.hitground0

effect give @s slowness infinite 255 true

scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match
execute as @e[type=item_display,tag=aj.chaos_golem.root] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function animated_java:chaos_golem/animations/animation_model_hit_ground/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target

playsound entity.illusioner.prepare_blindness record @a ~ ~ ~ 2 1.4
playsound entity.illusioner.prepare_blindness record @a ~ ~ ~ 2 1.4
