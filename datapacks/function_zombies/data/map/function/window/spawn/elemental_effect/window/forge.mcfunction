#窗户
kill @e[type=marker,tag=window,tag=forge]

#下层
summon marker 69 32 85 {Tags:["window","facing_west","forge"],Rotation:[90.0f,0.0f],data:{slab:{1:waxed_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_weathered_cut_copper_slab,4:waxed_exposed_cut_copper_slab,5:waxed_weathered_cut_copper_slab,6:waxed_oxidized_cut_copper_slab}}}
summon marker 59 32 71 {Tags:["window","facing_east","forge"],Rotation:[-90.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_oxidized_cut_copper_slab,4:waxed_exposed_cut_copper_slab,5:waxed_cut_copper_slab,6:waxed_weathered_cut_copper_slab}}}
summon marker 64 33 56 {Tags:["window","facing_south","forge"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_weathered_cut_copper_slab,3:waxed_oxidized_cut_copper_slab,4:waxed_exposed_cut_copper_slab,5:waxed_exposed_cut_copper_slab,6:waxed_weathered_cut_copper_slab}}}
summon marker 72 32 74 {Tags:["window","facing_south","forge"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_cut_copper_slab,4:waxed_exposed_cut_copper_slab,5:waxed_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}
summon marker 84 32 82 {Tags:["window","facing_north","forge"],Rotation:[180.0f,0.0f],data:{slab:{1:waxed_exposed_cut_copper_slab,2:waxed_weathered_cut_copper_slab,3:waxed_oxidized_cut_copper_slab,4:waxed_cut_copper_slab,5:waxed_exposed_cut_copper_slab,6:waxed_weathered_cut_copper_slab}}}

#楼梯
summon marker 87 36 63 {Tags:["window","facing_west","forge","forge_side1"],Rotation:[90.0f,0.0f],data:{slab:{1:waxed_oxidized_cut_copper_slab,2:waxed_weathered_cut_copper_slab,3:waxed_exposed_cut_copper_slab,4:waxed_weathered_cut_copper_slab,5:waxed_exposed_cut_copper_slab,6:waxed_cut_copper_slab}}}
summon marker 71 43 60 {Tags:["window","facing_south","forge","forge_side1"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_weathered_cut_copper_slab,4:waxed_oxidized_cut_copper_slab,5:waxed_weathered_cut_copper_slab,6:waxed_oxidized_cut_copper_slab}}}

#上层
summon marker 73 46 89 {Tags:["window","facing_north","forge","forge_side1"],Rotation:[180.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_weathered_cut_copper_slab,3:waxed_exposed_cut_copper_slab,4:waxed_oxidized_cut_copper_slab,5:waxed_oxidized_cut_copper_slab,6:waxed_weathered_cut_copper_slab}}}
summon marker 85 43 66 {Tags:["window","facing_south","forge","forge_side1"],Rotation:[0.0f,0.0f],data:{slab:{1:waxed_exposed_cut_copper_slab,2:waxed_cut_copper_slab,3:waxed_exposed_cut_copper_slab,4:waxed_exposed_cut_copper_slab,5:waxed_exposed_cut_copper_slab,6:waxed_weathered_cut_copper_slab}}}
summon marker 97 40 89 {Tags:["window","facing_north","forge","forge_side1"],Rotation:[180.0f,0.0f],data:{slab:{1:waxed_weathered_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_cut_copper_slab,4:waxed_oxidized_cut_copper_slab,5:waxed_weathered_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}

#上层小楼梯
summon marker 83 45 98 {Tags:["window","facing_north","forge","forge_side1"],Rotation:[180.0f,0.0f],data:{slab:{1:waxed_exposed_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_cut_copper_slab,4:waxed_weathered_cut_copper_slab,5:waxed_exposed_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}
summon marker 94 48 95 {Tags:["window","facing_west","forge","forge_side1"],Rotation:[90.0f,0.0f],data:{slab:{1:waxed_exposed_cut_copper_slab,2:waxed_exposed_cut_copper_slab,3:waxed_weathered_cut_copper_slab,4:waxed_cut_copper_slab,5:waxed_cut_copper_slab,6:waxed_exposed_cut_copper_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=forge] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/forge
function map:window/spawn/elemental_effect/way_point/forge
