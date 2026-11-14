scoreboard players remove @s[scores={area.floor.effectcooldown=1..}] area.floor.effectcooldown 1
execute if score @s area.floor.effectcooldown matches 1.. run return 0

execute align xyz if block ~ ~-1 ~ soul_soil run return run function map:area/lab/floor/nether/final/effect/player_spirit
execute align xyz if block ~ ~-2 ~ soul_soil run return run function map:area/lab/floor/nether/final/effect/player_spirit
execute align xyz if block ~ ~ ~ soul_fire run function map:area/lab/floor/nether/final/effect/player_spirit
execute align xyz if block ~ ~-1 ~ soul_fire run function map:area/lab/floor/nether/final/effect/player_spirit

execute if function map:area/lab/floor/nether/final/effect/magma_contact run return run function map:area/lab/floor/nether/final/effect/player_crimson
# R40 armor-shop reachable spruce plank tops, using player feet heights.
execute if entity @s[x=289,y=93,z=131,dx=0,dy=0,dz=1] align xyz if block ~ ~-1 ~ minecraft:spruce_planks run return run function map:area/lab/floor/nether/final/effect/player_crimson
execute if entity @s[x=289,y=94,z=130,dx=0,dy=0,dz=0] align xyz if block ~ ~-1 ~ minecraft:spruce_planks run return run function map:area/lab/floor/nether/final/effect/player_crimson
