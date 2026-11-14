fill ~ ~ ~ ~1 ~ ~1 minecraft:cracked_stone_bricks
setblock ~ ~-1 ~ minecraft:cobblestone_slab[type=top]
setblock ~ ~-1 ~1 minecraft:cobblestone_wall[up=true,north=none,south=none,east=none,west=none]
setblock ~1 ~-1 ~ minecraft:cobblestone_wall[up=true,north=none,south=none,east=none,west=none]
setblock ~1 ~-1 ~1 minecraft:cobblestone_slab[type=top]
particle minecraft:end_rod ~1 ~1 ~1 0 0 0 0.3 5 force
particle minecraft:flash ~1 ~1 ~1 0 0 0 0 1 force
playsound minecraft:block.end_portal_frame.fill hostile @a ~1 ~1 ~1 1.5 0
scoreboard players set @s area.temperature 0
