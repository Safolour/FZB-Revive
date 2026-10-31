scoreboard players operation match zombie.number = @s zombie.lamda.match
execute as @e[type=item_display,tag=aj.lamda.root] if score @s zombie.lamda.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.death/play


execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.attack/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.walk_start/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.walk_loop/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.walk_end/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.hit_ground/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.shoot/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.sprint/stop
execute as @n[type=item_display,tag=aj.lamda.root,tag=target] run function animated_java:lamda/animations/animation.model.laser/stop


scoreboard players reset match zombie.number
tag @e[type=item_display] remove target


tag @s remove skill.lamda.walk.start
tag @s remove skill.lamda.walk.loop
tag @s remove skill.lamda.walk.end

tag @s remove skill.lamda.attack
tag @s remove skill.lamda.attack0
tag @s remove skill.lamda.hitground
tag @s remove skill.lamda.hitground0
tag @s remove skill.lamda.shoot
tag @s remove skill.lamda.shoot0
tag @s remove skill.lamda.sprint
tag @s remove skill.lamda.sprint0
tag @s remove skill.lamda.laser
tag @s remove skill.lamda.laser0

effect give @s slowness infinite 255 true

particle explosion ~ ~1.2 ~ 0 0 0 3 10 force @a[scores={particle=0}]
particle flash ~ ~1.2 ~ 0 0 0 0 1 force @a[scores={particle=0..1}]
particle large_smoke ~ ~1.2 ~ 0 0 0 0.3 20 force @a[scores={particle=0}]
particle bubble_pop ~ ~1.2 ~ 1 1 1 0 50 force @a[scores={particle=0}]
particle electric_spark ~ ~1.2 ~ 0.5 0.5 0.5 0.5 30 force @a[scores={particle=0}]
particle cloud ~ ~1.2 ~ 0.3 0.3 0.3 0.2 20 force @a[scores={particle=0}]
particle flame ~ ~1.2 ~ 0.2 0.2 0.2 0.3 20 force @a[scores={particle=0}]
particle lava ~ ~1.2 ~ 0.2 0.2 0.2 0 20 force @a[scores={particle=0..1}]

playsound entity.wither.death record @a ~ ~ ~ 2 1.4
playsound item.trident.thunder record @a ~ ~ ~ 2 1
playsound block.end_gateway.spawn record @a ~ ~ ~ 2 1
