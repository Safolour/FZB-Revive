
execute if score @s particle matches ..-1 run scoreboard players set @s particle 0
execute if score @s particle matches 3.. run scoreboard players set @s particle 0
execute unless score @s particle0 = @s particle0 run return run scoreboard players operation @s particle0 = @s particle

execute if score @s particle matches 0 run tellraw @s [{translate:zb.particle.tellraw.1,with:[{translate:zb.particle.setting.0}]}]
execute if score @s particle matches 1 run tellraw @s [{translate:zb.particle.tellraw.1,with:[{translate:zb.particle.setting.1}]}]
execute if score @s particle matches 2 run tellraw @s [{translate:zb.particle.tellraw.1,with:[{translate:zb.particle.setting.2}]}]
playsound block.note_block.pling record @s ~ ~ ~ 1 2 0
scoreboard players operation @s particle0 = @s particle
scoreboard players enable @s particle