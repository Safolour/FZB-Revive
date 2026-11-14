data remove storage map:r40 r41_cleaned
schedule clear zombie:skill/nether/firelord/p5/return_portal/reveal
schedule clear zombie:skill/nether/firelord/p5/return_portal/finish
data remove storage map:r40 portal_transition
data remove storage map:r40 p5_guide_spawned
kill @e[type=text_display,tag=firelord.p5.guide]
tag @a[tag=firelord.p5.inside] remove firelord.p5.inside
kill @e[tag=firelord.p5.switch]
kill @e[tag=firelord.p5.switch.label]
execute if data storage map:r40 p5_core_forceload if block 300 88 196 minecraft:lever run setblock 300 88 196 minecraft:lever[face=wall,facing=north,powered=false]
execute if data storage map:r40 p5_core_forceload if score #p5_core_kept area.temperature matches 0 run forceload remove 300 196
data remove storage map:r40 p5_core_forceload
data remove storage map:r40 p5
data remove storage map:r40 p5_closed
data remove storage map:r40 p5_breached
kill @e[type=marker,tag=firelord.p5.chase.target]
data remove storage map:r40 p5_door_warned
function map:area/lab/floor/reset
function map:area/lab/temperature/reset
function map:area/lab/monhan/reset
function map:area/lab/reaction/fire/reset
function zombie:skill/nether/firelord/p5/terminal/cleanup
