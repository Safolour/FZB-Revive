
execute as @e[tag=door,tag=ruins_karst] run function system:death
function map:door/elemental_effect/close/ruins_karst
 summon interaction 76 25 124 {Tags:["door","ruins_karst","interactable","chosen"],height:5,width:2,data:{door:ruins_karst}}
 summon interaction 76 25 126 {Tags:["door","ruins_karst","interactable","chosen"],height:5,width:2,data:{door:ruins_karst}}
 summon marker 75 25 125 {Tags:["door","ruins_karst","side"],data:{side:ruins_karst}}
 summon marker 77 25 125 {Tags:["door","ruins_karst","side"],data:{side:karst_ruins}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = ruins_karst door.price
scoreboard players operation price door.price = ruins_karst door.price
 summon armor_stand 75 28.5 125 {Tags:["door","ruins_karst"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.karst_ruins"}]]}
 summon armor_stand 77 28.5 125 {Tags:["door","ruins_karst"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.ruins_karst"}]]}
 summon armor_stand 75 28 125 {Tags:["door","ruins_karst","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 77 28 125 {Tags:["door","ruins_karst","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen