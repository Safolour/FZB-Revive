#窗户
kill @e[type=marker,tag=window,tag=ruins]

summon marker 53 26 105 {Tags:["window","facing_south","ruins"],Rotation:[0.0f,0.0f],data:{slab:{1:mossy_stone_brick_slab,2:stone_brick_slab,3:mossy_stone_brick_slab,4:tuff_brick_slab,5:mossy_stone_brick_slab,6:stone_brick_slab}}}
summon marker 69 27 103 {Tags:["window","facing_west","ruins"],Rotation:[90.0f,0.0f],data:{slab:{1:tuff_brick_slab,2:stone_brick_slab,3:stone_brick_slab,4:mossy_stone_brick_slab,5:tuff_brick_slab,6:stone_brick_slab}}}
summon marker 73 26 113 {Tags:["window","facing_west","ruins"],Rotation:[90.0f,0.0f],data:{slab:{1:diorite_slab,2:polished_diorite_slab,3:polished_diorite_slab,4:polished_diorite_slab,5:polished_diorite_slab,6:diorite_slab}}}
summon marker 64 26 132 {Tags:["window","facing_north","ruins"],Rotation:[180.0f,0.0f],data:{slab:{1:stone_brick_slab,2:mossy_stone_brick_slab,3:tuff_brick_slab,4:tuff_brick_slab,5:stone_brick_slab,6:mossy_stone_brick_slab}}}
summon marker 54 30 135 {Tags:["window","facing_north","ruins"],Rotation:[180.0f,0.0f],data:{slab:{1:diorite_slab,2:polished_diorite_slab,3:diorite_slab,4:polished_diorite_slab,5:polished_diorite_slab,6:diorite_slab}}}
summon marker 72 34 135 {Tags:["window","facing_north","ruins"],Rotation:[180.0f,0.0f],data:{slab:{1:diorite_slab,2:polished_diorite_slab,3:diorite_slab,4:polished_diorite_slab,5:diorite_slab,6:diorite_slab}}}
summon marker 72 35 113 {Tags:["window","facing_west","ruins"],Rotation:[90.0f,0.0f],data:{slab:{1:polished_diorite_slab,2:diorite_slab,3:diorite_slab,4:diorite_slab,5:diorite_slab,6:polished_diorite_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=ruins] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/ruins
function map:window/spawn/elemental_effect/way_point/ruins
