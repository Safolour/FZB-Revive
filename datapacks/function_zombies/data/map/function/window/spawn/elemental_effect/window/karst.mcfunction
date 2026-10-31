#窗户
kill @e[type=marker,tag=window,tag=karst]

summon marker 93 30 124 {Tags:["window","facing_west","karst"],Rotation:[90.0f,0.0f],data:{slab:{1:prismarine_brick_slab,2:prismarine_brick_slab,3:prismarine_slab,4:prismarine_slab,5:prismarine_slab,6:prismarine_brick_slab}}}
summon marker 84 31 132 {Tags:["window","facing_east","karst"],Rotation:[-90.0f,0.0f],data:{slab:{1:prismarine_slab,2:prismarine_brick_slab,3:prismarine_slab,4:prismarine_brick_slab,5:prismarine_slab,6:prismarine_slab}}}
summon marker 98 33 140 {Tags:["window","facing_north","karst"],Rotation:[180.0f,0.0f],data:{slab:{1:prismarine_slab,2:prismarine_brick_slab,3:prismarine_brick_slab,4:prismarine_brick_slab,5:prismarine_slab,6:prismarine_slab}}}
summon marker 119 36 126 {Tags:["window","facing_west","karst"],Rotation:[90.0f,0.0f],data:{slab:{1:prismarine_slab,2:prismarine_brick_slab,3:prismarine_slab,4:prismarine_brick_slab,5:prismarine_slab,6:prismarine_slab}}}
summon marker 109 37 115 {Tags:["window","facing_east","karst"],Rotation:[-90.0f,0.0f],data:{slab:{1:prismarine_slab,2:prismarine_slab,3:prismarine_slab,4:prismarine_brick_slab,5:prismarine_brick_slab,6:prismarine_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=karst] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/karst
function map:window/spawn/elemental_effect/way_point/karst
