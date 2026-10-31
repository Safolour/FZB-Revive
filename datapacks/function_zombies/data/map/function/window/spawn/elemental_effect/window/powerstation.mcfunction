#窗户
kill @e[type=marker,tag=window,tag=powerstation]

summon marker 119 44 62 {Tags:["window","facing_south","powerstation"],Rotation:[0.0f,0.0f],data:{slab:{1:oak_slab,2:oak_slab,3:oak_slab,4:oak_slab,5:oak_slab,6:oak_slab}}}
summon marker 127 44 62 {Tags:["window","facing_south","powerstation"],Rotation:[0.0f,0.0f],data:{slab:{1:oak_slab,2:oak_slab,3:oak_slab,4:oak_slab,5:oak_slab,6:oak_slab}}}
summon marker 115 44 85 {Tags:["window","facing_north","powerstation"],Rotation:[180.0f,0.0f],data:{slab:{1:oak_slab,2:oak_slab,3:oak_slab,4:oak_slab,5:oak_slab,6:oak_slab}}}

scoreboard players set @e[type=marker,tag=window,tag=powerstation] window.piece 6
execute as @e[type=marker,tag=window] at @s run function map:window/repair1 with entity @s data.slab

function map:window/spawn/elemental_effect/spawner/powerstation
function map:window/spawn/elemental_effect/way_point/powerstation
