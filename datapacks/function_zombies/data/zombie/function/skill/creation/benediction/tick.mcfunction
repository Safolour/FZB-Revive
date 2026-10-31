
scoreboard players operation health zombie.creation.benediction = @s zombie.health
scoreboard players operation health zombie.creation.benediction *= 100 number
scoreboard players operation health zombie.creation.benediction /= @s zombie.max_health
execute if score health zombie.creation.benediction matches ..70 run scoreboard players add @s[tag=!skill.creation.benediction.noweapon] zombie.creation.benediction 1
execute if score @s zombie.creation.benediction matches 150.. run function zombie:skill/creation/benediction/summon