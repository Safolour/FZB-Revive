#窗户
kill @e[type=marker,tag=window,tag=laboratory_light]

summon marker 209 41 93 {Tags:["window","facing_east","laboratory_light"],Rotation:[-90.0f,0.0f],data:{slab:{1:smooth_quartz_slab,2:smooth_quartz_slab,3:smooth_quartz_slab,4:smooth_quartz_slab,5:smooth_quartz_slab,6:smooth_quartz_slab}}}
summon marker 213 41 101 {Tags:["window","facing_east","laboratory_light"],Rotation:[-90.0f,0.0f],data:{slab:{1:smooth_quartz_slab,2:smooth_quartz_slab,3:smooth_quartz_slab,4:smooth_quartz_slab,5:smooth_quartz_slab,6:smooth_quartz_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=laboratory_light] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/laboratory_light
function map:window/spawn/elemental_effect/way_point/laboratory_light
