scoreboard players add @s zombie.creation.collapse 1
execute if score @s zombie.creation.collapse matches 70 run function zombie:skill/creation/collapse/laser
execute if score @s zombie.creation.collapse matches ..90 run return fail
scoreboard players set @s zombie.creation.collapse 0
tag @s remove cantgyro
