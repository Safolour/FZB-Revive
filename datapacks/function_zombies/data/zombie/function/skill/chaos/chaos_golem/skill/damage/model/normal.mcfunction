scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match
execute as @e[type=item_display,tag=aj.chaos_golem.root] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute as @e[type=item_display,tag=target] run function zombie:skill/chaos/chaos_golem/skill/damage/model/normal0

scoreboard players reset match zombie.number
tag @e[type=item_display] remove target
