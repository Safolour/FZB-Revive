
tag @s add skill.chaosgolem.spawn.jump
scoreboard players set @s zombie.chaos.chaos_golem.skill_timerspawn 0

effect give @s slowness infinite 255 true


scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match
execute as @e[type=item_display,tag=aj.chaos_golem.root] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=aj.chaos_golem.root,tag=target] at @s run function animated_java:chaos_golem/animations/animation_model_jump/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target
