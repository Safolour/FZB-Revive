#窗户
kill @e[type=marker,tag=window,tag=laboratory_yellow]

summon marker 134 41 49 {Tags:["window","facing_east","laboratory_yellow"],Rotation:[-90.0f,0.0f],data:{slab:{1:quartz_slab,2:pale_oak_slab,3:diorite_slab,4:diorite_slab,5:pale_oak_slab,6:pale_oak_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=laboratory_yellow] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/laboratory_yellow
function map:window/spawn/elemental_effect/way_point/laboratory_yellow
