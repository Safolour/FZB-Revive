
scoreboard players operation match zombie.remains.dropship.tntmatch = @s zombie.remains.dropship.tntmatch
execute as @e[type=ghast,tag=skill.dropship] if score @s zombie.remains.dropship.tntmatch = match zombie.remains.dropship.tntmatch run tag @s add target
execute unless entity @s[type=block_display,tag=skill.dropship.tnt.end] at @e[type=ghast,tag=target] run tp @s ~ ~-2 ~
execute if entity @e[type=ghast,tag=target,tag=skill.dropship.fly.end1] run tag @s add skill.dropship.tnt.end
execute unless entity @s[tag=skill.dropship.tnt.end] unless entity @e[type=ghast,tag=target] run kill @s
tag @e[type=ghast,tag=target] remove target
scoreboard players reset match zombie.remains.dropship.tntmatch
execute unless entity @s[tag=skill.dropship.tnt.end] run return 0

scoreboard players add @s zombie.remains.dropship.skill_timer 1
tp @s ~ ~-0.6 ~
execute if score @s zombie.remains.dropship.skill_timer matches 15 run function zombie:skill/remains/dropship/tnt/explosion
