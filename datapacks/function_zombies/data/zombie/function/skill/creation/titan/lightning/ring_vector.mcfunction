execute store result score #titan.ring.dx origin.tool_cfg run data get entity @s Pos[0] 10000
execute store result score #titan.ring.dy origin.tool_cfg run data get entity @s Pos[1] 10000
execute store result score #titan.ring.dz origin.tool_cfg run data get entity @s Pos[2] 10000
scoreboard players operation #titan.ring.dx origin.tool_cfg -= #titan.ring.x origin.tool_cfg
scoreboard players operation #titan.ring.dy origin.tool_cfg -= #titan.ring.y origin.tool_cfg
scoreboard players operation #titan.ring.dz origin.tool_cfg -= #titan.ring.z origin.tool_cfg
execute store result storage titan_light ring.dx double 0.0001 run scoreboard players get #titan.ring.dx origin.tool_cfg
execute store result storage titan_light ring.dy double 0.0001 run scoreboard players get #titan.ring.dy origin.tool_cfg
execute store result storage titan_light ring.dz double 0.0001 run scoreboard players get #titan.ring.dz origin.tool_cfg
function zombie:skill/creation/titan/lightning/ring_particle with storage titan_light ring
kill @s
