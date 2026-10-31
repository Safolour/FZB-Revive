scoreboard players add @s zombie.remains.dropship.skill_timer 2
tp @s[tag=!skill.dropship.fly.end] ^ ^ ^0.12
execute if entity @e[type=marker,tag=skill.dropship.point,distance=..1] run function zombie:skill/remains/dropship/fly/if
execute if score @s zombie.remains.dropship.skill_timer matches 2000 run tag @s add skill.dropship.fly.end
execute unless entity @s[tag=skill.dropship.fly.end] run return 0

tp @s[tag=!skill.dropship.fly.end0] ^ ^ ^0.125 facing entity @e[type=marker,tag=skill.dropship.point.end,limit=1]
execute if entity @e[type=marker,tag=skill.dropship.point.end,distance=..1] if entity @s[tag=!skill.dropship.fly.end0] run scoreboard players set @s zombie.remains.dropship.skill_timer -10000
execute if entity @e[type=marker,tag=skill.dropship.point.end,distance=..1] run tag @s add skill.dropship.fly.end0
execute unless entity @s[tag=skill.dropship.fly.end0] run return 0

execute if score @s zombie.remains.dropship.skill_timer matches -9980 run tag @s add skill.dropship.fly.end1

execute if score @s zombie.remains.dropship.skill_timer matches -9960 run function zombie:skill/remains/dropship/fly/end
