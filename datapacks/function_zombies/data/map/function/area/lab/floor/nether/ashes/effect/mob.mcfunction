scoreboard players add @s area.floor.effectcooldown 1
execute if score @s area.floor.effectcooldown matches 20.. run scoreboard players set @s area.floor.effectcooldown 0

execute unless score @s area.floor.effectcooldown matches 0 run return 0

execute if block ~ ~-1 ~ magma_block run function map:area/lab/floor/nether/ashes/effect/mob0
execute if block ~ ~ ~ fire run function map:area/lab/floor/nether/ashes/effect/mob0
