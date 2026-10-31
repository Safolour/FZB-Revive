
execute as @e[tag=door,tag=cave_ruins] run function system:death
function map:door/elemental_effect/close/cave_ruins
 summon interaction 44 25 111 {Tags:["door","cave_ruins","interactable","chosen"],height:5,width:2,data:{door:cave_ruins}}
 summon interaction 44 25 113 {Tags:["door","cave_ruins","interactable","chosen"],height:5,width:2,data:{door:cave_ruins}}
 summon interaction 44 25 115 {Tags:["door","cave_ruins","interactable","chosen"],height:5,width:2,data:{door:cave_ruins}}
 summon marker 43 25 113 {Tags:["door","cave_ruins","side"],data:{side:cave_ruins}}
 summon marker 45 25 113 {Tags:["door","cave_ruins","side"],data:{side:ruins_cave}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = cave_ruins door.price
scoreboard players operation price door.price = cave_ruins door.price
 summon armor_stand 43 28.5 113 {Tags:["door","cave_ruins"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.ruins_cave"}]]}
 summon armor_stand 45 28.5 113 {Tags:["door","cave_ruins"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.cave_ruins"}]]}
 summon armor_stand 43 28 113 {Tags:["door","cave_ruins","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 45 28 113 {Tags:["door","cave_ruins","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen