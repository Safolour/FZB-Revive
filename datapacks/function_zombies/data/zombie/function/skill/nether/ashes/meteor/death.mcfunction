scoreboard players operation match zombie.nether.ashes.meteor.match = @s zombie.nether.ashes.meteor.match

execute as @e[type=zombie,tag=skill.meteor] if score @s zombie.nether.ashes.meteor.match = match zombie.nether.ashes.meteor.match run tag @s add target

execute as @e[type=zombie,tag=target] run function system:death

scoreboard players reset match zombie.nether.ashes.meteor.match
