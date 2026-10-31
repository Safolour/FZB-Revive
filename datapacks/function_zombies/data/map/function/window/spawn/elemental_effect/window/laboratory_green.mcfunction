#窗户
kill @e[type=marker,tag=window,tag=laboratory_green]

summon marker 162 46 75 {Tags:["window","facing_west","laboratory_green"],Rotation:[90.0f,0.0f],data:{slab:{1:quartz_slab,2:pale_oak_slab,3:pale_oak_slab,4:pale_oak_slab,5:diorite_slab,6:diorite_slab}}}
summon marker 171 46 79 {Tags:["window","facing_south","laboratory_green"],Rotation:[0.0f,0.0f],data:{slab:{1:pale_oak_slab,2:diorite_slab,3:diorite_slab,4:quartz_slab,5:quartz_slab,6:pale_oak_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=laboratory_green] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/laboratory_green
function map:window/spawn/elemental_effect/way_point/laboratory_green
