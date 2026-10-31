
execute if score @s zombie.creation.avert matches ..100 run function zombie:skill/creation/avert/random

execute unless score @s zombie.creation.avert matches 200.. run scoreboard players add @s zombie.creation.avert 1
execute if score @s zombie.creation.avert matches 200.. run function zombie:skill/creation/avert/summon
