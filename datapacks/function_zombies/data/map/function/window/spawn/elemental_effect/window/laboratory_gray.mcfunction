#窗户
kill @e[type=marker,tag=window,tag=laboratory_gray]

summon marker 155 46 56 {Tags:["window","facing_west","laboratory_gray"],Rotation:[90.0f,0.0f],data:{slab:{1:granite_slab,2:granite_slab,3:brick_slab,4:mud_brick_slab,5:brick_slab,6:granite_slab}}}
summon marker 159 46 64 {Tags:["window","facing_south","laboratory_gray"],Rotation:[0.0f,0.0f],data:{slab:{1:granite_slab,2:brick_slab,3:mud_brick_slab,4:mud_brick_slab,5:granite_slab,6:granite_slab}}}
summon marker 171 46 68 {Tags:["window","facing_west","laboratory_gray"],Rotation:[90.0f,0.0f],data:{slab:{1:pale_oak_slab,2:diorite_slab,3:diorite_slab,4:quartz_slab,5:pale_oak_slab,6:pale_oak_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=laboratory_gray] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/laboratory_gray
function map:window/spawn/elemental_effect/way_point/laboratory_gray
