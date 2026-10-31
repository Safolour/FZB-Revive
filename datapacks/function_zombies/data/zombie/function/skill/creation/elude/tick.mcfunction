
execute if score @s zombie.creation.elude matches ..100 run function zombie:skill/creation/elude/random

execute unless score @s zombie.creation.elude matches 200.. run scoreboard players add @s zombie.creation.elude 1
execute if score @s zombie.creation.elude matches 200.. run function zombie:skill/creation/elude/summon
