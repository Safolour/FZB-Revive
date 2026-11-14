execute unless block ~ ~ ~ minecraft:cracked_stone_bricks run scoreboard players set @s area.temperature 0
execute unless score @s area.temperature matches 16 run return 0
fill ~ ~-1 ~ ~1 ~ ~1 minecraft:air
particle minecraft:block{block_state:"minecraft:stone"} ~1 ~1 ~1 0.4 0.4 0.4 0 100 force
particle minecraft:explosion ~1 ~1 ~1 0 0 0 0 1 force
playsound minecraft:entity.zombie.break_wooden_door hostile @a ~1 ~1 ~1 1.5 1
