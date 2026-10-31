scoreboard players operation match zombie.remains.dropship = @n[type=marker,tag=skill.dropship.point,distance=..1] zombie.remains.dropship
execute if score @s zombie.remains.dropship = match zombie.remains.dropship run tag @s add pass
scoreboard players reset match zombie.remains.dropship

execute if entity @s[tag=pass] run return run function zombie:skill/remains/dropship/fly/facing
