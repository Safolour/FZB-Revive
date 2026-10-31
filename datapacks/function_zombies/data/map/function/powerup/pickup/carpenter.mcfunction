
scoreboard players set @e[type=marker,tag=window] window.piece 6
scoreboard players operation gold powerup = carpenter powerup.gold
execute if score timer powerup.timer.doublegold matches 1.. run scoreboard players operation gold powerup *= 2 number
execute if score timer powerup.timer.triplegold matches 1.. run scoreboard players operation gold powerup *= 3 number
execute if score timer powerup.timer.quadruplegold matches 1.. run scoreboard players operation gold powerup *= 4 number
execute as @a[scores={system.room=4..}] run tellraw @s [{translate:"zb.item.gold",with:[{"score":{"name":"gold","objective":"powerup"},"color":"gold"}]},{translate:zb.powerup.tellraw.4}]
execute as @a[scores={system.room=4..}] run scoreboard players operation @s gold += gold powerup
execute as @a[scores={system.room=4..}] at @s run playsound block.anvil.use record @s ~ ~ ~ 10 0 0