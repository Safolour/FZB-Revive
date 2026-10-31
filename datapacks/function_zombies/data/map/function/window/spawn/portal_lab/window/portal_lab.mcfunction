#窗户
kill @e[type=marker,tag=window,tag=portal_lab]

summon marker 289 93 161 {Tags:["window","facing_east","portal_lab"],Rotation:[-90.0f,0.0f],data:{slab:{1:diorite_slab,2:diorite_slab,3:smooth_stone_slab,4:smooth_stone_slab,5:diorite_slab,6:polished_diorite_slab}}}
summon marker 311 93 161 {Tags:["window","facing_west","portal_lab"],Rotation:[90.0f,0.0f],data:{slab:{1:smooth_stone_slab,2:polished_diorite_slab,3:smooth_stone_slab,4:polished_diorite_slab,5:diorite_slab,6:smooth_stone_slab}}}
summon marker 289 93 139 {Tags:["window","facing_east","portal_lab"],Rotation:[-90.0f,0.0f],data:{slab:{1:diorite_slab,2:smooth_stone_slab,3:smooth_stone_slab,4:smooth_stone_slab,5:diorite_slab,6:polished_diorite_slab}}}
summon marker 311 93 139 {Tags:["window","facing_west","portal_lab"],Rotation:[90.0f,0.0f],data:{slab:{1:smooth_stone_slab,2:diorite_slab,3:polished_diorite_slab,4:smooth_stone_slab,5:smooth_stone_slab,6:diorite_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=portal_lab] window.piece 6
execute as @e[type=marker,tag=window,tag=portal_lab] at @s run function map:window/spawn/portal_lab/window/migrate_slabs with entity @s data.slab
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/portal_lab/spawner/portal_lab
function map:window/spawn/portal_lab/way_point/portal_lab
