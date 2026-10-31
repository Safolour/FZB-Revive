
#effect give @s poison 1 4 false
execute if score @s zombie.creation.virus matches 1..2 run effect give @s slowness 1 0 false
execute if score @s zombie.creation.virus matches 3..4 run effect give @s slowness 1 1 false
execute if score @s zombie.creation.virus matches 5..6 run effect give @s slowness 1 2 false
execute if score @s zombie.creation.virus matches 7.. run effect give @s slowness 1 3 false
scoreboard players reset @s zombie.creation.virus
