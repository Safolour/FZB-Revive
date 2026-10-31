
scoreboard players operation health zombie.creation.defend = @s zombie.health
scoreboard players operation health zombie.creation.defend *= 100 number
scoreboard players operation health zombie.creation.defend /= @s zombie.max_health
execute if score health zombie.creation.defend matches ..70 run scoreboard players add @s[tag=!skill.creation.defend.noweapon] zombie.creation.defend 1
execute if score @s zombie.creation.defend matches 150.. run function zombie:skill/creation/defend/summon