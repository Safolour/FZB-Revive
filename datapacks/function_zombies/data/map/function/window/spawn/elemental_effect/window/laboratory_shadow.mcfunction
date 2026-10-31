#窗户
kill @e[type=marker,tag=window,tag=laboratory_shadow]

summon marker 214 53 48 {Tags:["window","facing_east","laboratory_shadow"],Rotation:[-90.0f,0.0f],data:{slab:{1:blackstone_slab,2:blackstone_slab,3:blackstone_slab,4:blackstone_slab,5:blackstone_slab,6:blackstone_slab}}}
summon marker 228 53 45 {Tags:["window","facing_west","laboratory_shadow"],Rotation:[90.0f,0.0f],data:{slab:{1:blackstone_slab,2:blackstone_slab,3:blackstone_slab,4:blackstone_slab,5:blackstone_slab,6:blackstone_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=laboratory_shadow] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/laboratory_shadow
function map:window/spawn/elemental_effect/way_point/laboratory_shadow
