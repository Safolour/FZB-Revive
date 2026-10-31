scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match
execute as @e[type=item_display,tag=aj.chaos_golem.root] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=aj.chaos_golem.root,tag=target] run function animated_java:chaos_golem/animations/animation_model_death/play

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target


tag @s remove skill.chaosgolem.walk.start
tag @s remove skill.chaosgolem.walk.loop
tag @s remove skill.chaosgolem.walk.end

tag @s remove skill.chaosgolem.attack
tag @s remove skill.chaosgolem.attack0
tag @s remove skill.chaosgolem.hitground
tag @s remove skill.chaosgolem.hitground0
tag @s remove skill.chaosgolem.shoot
tag @s remove skill.chaosgolem.shoot0

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
