# 35 directed firework particles form a ring in a randomly oriented plane.
execute store result score #titan.ring.x origin.tool_cfg run data get entity @s Pos[0] 10000
execute store result score #titan.ring.y origin.tool_cfg run data get entity @s Pos[1] 10000
execute store result score #titan.ring.z origin.tool_cfg run data get entity @s Pos[2] 10000
scoreboard players add #titan.ring.y origin.tool_cfg 10000
execute store result storage titan_light ring.x double 0.0001 run scoreboard players get #titan.ring.x origin.tool_cfg
execute store result storage titan_light ring.y double 0.0001 run scoreboard players get #titan.ring.y origin.tool_cfg
execute store result storage titan_light ring.z double 0.0001 run scoreboard players get #titan.ring.z origin.tool_cfg
execute store result storage titan_light ring.yaw int 1 run random value -180..179
execute store result storage titan_light ring.pitch int 1 run random value -90..90
function zombie:skill/creation/titan/lightning/ring_rotate with storage titan_light ring
