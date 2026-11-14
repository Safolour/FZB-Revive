# #p is the new signed amount, in 1/100000 health units. Keep the original
# effects and their callbacks; only their final target changes.
execute store result score @s bs.health0 run data get entity @s Health 100000
execute store result score #m bs.ctx run attribute @s minecraft:max_health get 100000
scoreboard players operation @s bs.health = #m bs.ctx
scoreboard players operation #m bs.ctx -= @s bs.health0
scoreboard players operation @s bs.hmod += #p bs.ctx
scoreboard players operation @s bs.hmod < #m bs.ctx
# A subsequent loss can cancel all pending healing and require an immediate clamp.
execute if score @s bs.hmod matches ..0 run return run function bs.health:utils/decrease_health
return 1
