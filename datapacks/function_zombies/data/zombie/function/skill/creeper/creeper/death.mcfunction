
scoreboard players operation match zombie.creeper.match = @s zombie.creeper.match
execute as @e[type=creeper,tag=skill.creeper] if score @s zombie.creeper.match = match zombie.creeper.match run function zombie:death
scoreboard players reset match zombie.creeper.match
playsound entity.creeper.death record @a ~ ~ ~ 1 1
