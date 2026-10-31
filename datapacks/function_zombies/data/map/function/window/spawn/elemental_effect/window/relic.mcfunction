#窗户
kill @e[type=marker,tag=window,tag=relic]

summon marker 126 38 115 {Tags:["window","facing_north","relic"],Rotation:[180.0f,0.0f],data:{slab:{1:cherry_slab,2:pale_oak_slab,3:birch_slab,4:pale_oak_slab,5:pale_oak_slab,6:cherry_slab}}}
summon marker 116 38 99 {Tags:["window","facing_east","relic"],Rotation:[-90.0f,0.0f],data:{slab:{1:pale_oak_slab,2:cherry_slab,3:birch_slab,4:birch_slab,5:birch_slab,6:cherry_slab}}}
summon marker 138 41 95 {Tags:["window","facing_west","relic"],Rotation:[90.0f,0.0f],data:{slab:{1:cherry_slab,2:birch_slab,3:pale_oak_slab,4:pale_oak_slab,5:pale_oak_slab,6:cherry_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=relic] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/relic
function map:window/spawn/elemental_effect/way_point/relic
