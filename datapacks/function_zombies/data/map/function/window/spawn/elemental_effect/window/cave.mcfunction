#窗户
kill @e[type=marker,tag=window,tag=cave]

summon marker 29 26 101 {Tags:["window","facing_south","cave"],Rotation:[0.0f,0.0f],data:{slab:{1:cobblestone_slab,2:andesite_slab,3:stone_slab,4:andesite_slab,5:cobblestone_slab,6:stone_slab}}}
summon marker 40 26 122 {Tags:["window","facing_west","cave"],Rotation:[90.0f,0.0f],data:{slab:{1:andesite_slab,2:cobblestone_slab,3:cobblestone_slab,4:andesite_slab,5:stone_slab,6:cobblestone_slab}}}
summon marker 22 26 112 {Tags:["window","facing_north","cave"],Rotation:[180.0f,0.0f],data:{slab:{1:andesite_slab,2:cobblestone_slab,3:cobblestone_slab,4:cobblestone_slab,5:andesite_slab,6:stone_slab}}}
summon marker 35 26 128 {Tags:["window","facing_north","cave"],Rotation:[180.0f,0.0f],data:{slab:{1:stone_slab,2:andesite_slab,3:cobblestone_slab,4:cobblestone_slab,5:cobblestone_slab,6:andesite_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=cave] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/cave
function map:window/spawn/elemental_effect/way_point/cave
