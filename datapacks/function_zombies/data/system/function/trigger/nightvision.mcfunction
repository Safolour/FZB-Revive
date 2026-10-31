
execute if score @s nightvision matches ..-1 run scoreboard players set @s nightvision 0
execute if score @s nightvision matches 2.. run scoreboard players set @s nightvision 0
execute unless score @s nightvision0 = @s nightvision0 run return run scoreboard players operation @s nightvision0 = @s nightvision

execute if score @s nightvision matches 0 run effect clear @s minecraft:night_vision
execute if score @s nightvision matches 0 run tellraw @s [{translate:zb.nightvision.tellraw.1}]
execute if score @s nightvision matches 1 run tellraw @s [{translate:zb.nightvision.tellraw.2}]
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players operation @s nightvision0 = @s nightvision
scoreboard players enable @s nightvision