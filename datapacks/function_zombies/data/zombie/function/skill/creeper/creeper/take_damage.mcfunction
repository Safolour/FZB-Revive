playsound entity.creeper.hurt record @a ~ ~ ~ 1 1
scoreboard players operation match zombie.creeper.match = @s zombie.creeper.match
execute as @e[type=creeper,tag=skill.creeper] if score @s zombie.creeper.match = match zombie.creeper.match run tag @s add target
damage @n[type=creeper,tag=target] 0.001
function zombie:skill/creeper/creeper/primed
scoreboard players reset match zombie.creeper.match
tag @e[type=creeper,tag=target] remove target
