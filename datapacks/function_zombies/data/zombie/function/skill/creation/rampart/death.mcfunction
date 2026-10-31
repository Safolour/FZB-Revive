scoreboard players operation match zombie.creation.rampart.match = @s zombie.creation.rampart.match
execute as @e[type=marker,tag=skill.creation.rampart.shield] if score @s zombie.creation.rampart.match = match zombie.creation.rampart.match run kill @s
scoreboard players reset match zombie.creation.rampart.match
function system:death
