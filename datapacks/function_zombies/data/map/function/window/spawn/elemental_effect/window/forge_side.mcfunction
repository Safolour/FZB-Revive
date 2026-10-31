#窗户
kill @e[type=marker,tag=window,tag=forge_side]

summon marker 71 34 50 {Tags:["window","facing_south","forge_side"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_cut_copper_slab,4:waxed_oxidized_cut_copper_slab,5:waxed_weathered_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}
summon marker 86 37 41 {Tags:["window","facing_south","forge_side"],Rotation:[0.0f,0.0f],data:{slab:{1:diorite_slab,2:polished_diorite_slab,3:diorite_slab,4:diorite_slab,5:diorite_slab,6:polished_diorite_slab}}}
summon marker 99 39 51 {Tags:["window","facing_south","forge_side"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_exposed_cut_copper_slab,4:waxed_exposed_cut_copper_slab,5:waxed_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}
summon marker 102 40 62 {Tags:["window","facing_south","forge_side"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_cut_copper_slab,4:waxed_weathered_cut_copper_slab,5:waxed_weathered_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=forge_side] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/forge_side
function map:window/spawn/elemental_effect/way_point/forge_side
