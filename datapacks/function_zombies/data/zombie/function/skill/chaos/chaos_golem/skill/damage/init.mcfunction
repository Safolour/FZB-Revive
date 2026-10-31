
scoreboard players operation match zombie.number = @s zombie.chaos.chaos_golem.match

execute as @e[type=zombie,tag=skill.chaosgolem] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target
execute as @e[type=item_display,tag=aj.chaos_golem.root] if score @s zombie.chaos.chaos_golem.match = match zombie.number run tag @s add target

execute as @e[type=zombie,tag=target] run function zombie:skill/chaos/chaos_golem/skill/damage/init0

execute if score @s zombie.health matches 1.. run scoreboard players operation @e[type=zombie,tag=target] zombie.health = @s zombie.health


scoreboard players reset match zombie.number
tag @e[type=zombie] remove target
tag @e[type=item_display] remove target
