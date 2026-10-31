
scoreboard players operation match zombie.creation.collapse.match = @s zombie.creation.collapse.match
execute as @e[type=zombie,tag=skill.creation.collapse] if score @s zombie.creation.collapse.match = match zombie.creation.collapse.match run tag @s add target
execute unless entity @e[type=zombie,tag=target] run kill @s
tag @e[type=zombie,tag=skill.creation.collapse,tag=target] remove target
scoreboard players reset match zombie.creation.collapse.match

scoreboard players add @s zombie.creation.collapse 1
execute if score @s zombie.creation.collapse matches 20.. run function zombie:skill/creation/collapse/laser0
