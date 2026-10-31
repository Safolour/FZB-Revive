scoreboard players add @s area.floor.effectcooldown 1
execute if score @s area.floor.effectcooldown matches 10.. run scoreboard players set @s area.floor.effectcooldown 0

execute unless score @s area.floor.effectcooldown matches 0 run return 0

execute align xyz if block ~ ~-1 ~ magma_block run return run function map:area/lab/floor/nether/crimson/effect/player0
execute align xyz if block ~ ~-2 ~ magma_block run return run function map:area/lab/floor/nether/crimson/effect/player0
execute align xyz if block ~ ~ ~ fire run function map:area/lab/floor/nether/crimson/effect/player0
execute align xyz if block ~ ~-1 ~ fire run function map:area/lab/floor/nether/crimson/effect/player0
