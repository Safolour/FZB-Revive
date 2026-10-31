#窗户
kill @e[type=marker,tag=window,tag=laboratory_blue]

summon marker 142 44 67 {Tags:["window","facing_west","laboratory_blue"],Rotation:[90.0f,0.0f],data:{slab:{1:pale_oak_slab,2:diorite_slab,3:quartz_slab,4:quartz_slab,5:diorite_slab,6:diorite_slab}}}
summon marker 137 44 81 {Tags:["window","facing_north","laboratory_blue"],Rotation:[180.0f,0.0f],data:{slab:{1:pale_oak_slab,2:pale_oak_slab,3:quartz_slab,4:quartz_slab,5:diorite_slab,6:diorite_slab}}}
summon marker 147 46 87 {Tags:["window","facing_north","laboratory_blue"],Rotation:[180.0f,0.0f],data:{slab:{1:pale_oak_slab,2:pale_oak_slab,3:quartz_slab,4:diorite_slab,5:quartz_slab,6:pale_oak_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=laboratory_blue] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/laboratory_blue
function map:window/spawn/elemental_effect/way_point/laboratory_blue
