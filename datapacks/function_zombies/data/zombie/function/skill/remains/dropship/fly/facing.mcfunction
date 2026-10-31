tag @s remove pass

execute if entity @s[tag=skill.dropship.positive] run scoreboard players add @s zombie.remains.dropship 1
execute if entity @s[tag=skill.dropship.negative] run scoreboard players remove @s zombie.remains.dropship 1

execute if entity @s[tag=skill.dropship.positive] if score @s zombie.remains.dropship matches 12 run scoreboard players set @s zombie.remains.dropship 0
execute if entity @s[tag=skill.dropship.negative] if score @s zombie.remains.dropship matches -1 run scoreboard players set @s zombie.remains.dropship 11

scoreboard players operation match zombie.remains.dropship = @s zombie.remains.dropship
execute as @e[type=marker,tag=skill.dropship.point] if score @s zombie.remains.dropship = match zombie.remains.dropship run tag @s add target

tp @s ~ ~ ~ facing entity @e[type=marker,tag=skill.dropship.point,limit=1,tag=target]

scoreboard players reset match zombie.remains.dropship
tag @e[type=marker,tag=target] remove target
