
execute as @e[tag=door,tag=ruins_forge] run function system:death
function map:door/elemental_effect/close/ruins_forge
 summon interaction 63 26 98 {Tags:["door","ruins_forge","interactable","chosen"],height:6,width:2,data:{door:ruins_forge}}
 summon interaction 65 26 98 {Tags:["door","ruins_forge","interactable","chosen"],height:6,width:2,data:{door:ruins_forge}}
 summon interaction 63 31 93 {Tags:["door","ruins_forge","interactable","chosen"],height:6,width:2,data:{door:ruins_forge}}
 summon interaction 65 31 93 {Tags:["door","ruins_forge","interactable","chosen"],height:6,width:2,data:{door:ruins_forge}}
 summon marker 64 26 99 {Tags:["door","ruins_forge","side"],data:{side:ruins_forge}}
 summon marker 64 30 92 {Tags:["door","ruins_forge","side"],data:{side:forge_ruins}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = ruins_forge door.price
scoreboard players operation price door.price = ruins_forge door.price
 summon armor_stand 64 34.5 92 {Tags:["door","ruins_forge"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.forge_ruins"}]]}
 summon armor_stand 64 29.5 99 {Tags:["door","ruins_forge"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.ruins_forge"}]]}
 summon armor_stand 64 34 92 {Tags:["door","ruins_forge","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 64 29 99 {Tags:["door","ruins_forge","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen