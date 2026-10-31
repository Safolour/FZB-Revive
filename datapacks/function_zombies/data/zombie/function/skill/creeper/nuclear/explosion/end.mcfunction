
scoreboard players operation match zombie.nuclearcreeper.match = @s zombie.nuclearcreeper.match
execute as @e[type=marker,tag=skill.nuclearcreeper.particle] if score @s zombie.nuclearcreeper.match = match zombie.nuclearcreeper.match run kill @s
scoreboard players reset match zombie.nuclearcreeper.match
function system:death
