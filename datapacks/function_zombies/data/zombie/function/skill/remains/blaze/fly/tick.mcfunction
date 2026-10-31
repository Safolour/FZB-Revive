execute if entity @s[tag=skill.blaze.stop] run return 0
tp @s ^ ^ ^0.1
execute if score stat zombie.nether.guardian matches 2 run tp @s ^ ^ ^0.4
execute unless entity @e[type=marker,tag=skill.blaze.spawn,distance=..1] run return 0

scoreboard players operation match zombie.remains.blaze.match = @s zombie.remains.blaze.match
execute as @e[type=marker,tag=skill.blaze.spawn,distance=..1] if score @s zombie.remains.blaze.match = match zombie.remains.blaze.match run tag @s add target
scoreboard players reset match zombie.remains.blaze.match

execute if entity @e[type=marker,tag=target] run tag @s add skill.blaze.stop
execute if entity @e[type=marker,tag=target] run tag @s add skill.blaze.shoot
kill @e[type=marker,tag=target]
