
execute as @e[tag=door,tag=karst_relic] run function system:death
function map:door/elemental_effect/close/karst_relic
 summon interaction 118 37 109 {Tags:["door","karst_relic","interactable","chosen"],height:5,width:2,data:{door:karst_relic}}
 summon interaction 119 37 110 {Tags:["door","karst_relic","interactable","chosen"],height:5,width:2,data:{door:karst_relic}}
 summon interaction 120 37 111 {Tags:["door","karst_relic","interactable","chosen"],height:5,width:2,data:{door:karst_relic}}
 summon interaction 121 37 112 {Tags:["door","karst_relic","interactable","chosen"],height:5,width:2,data:{door:karst_relic}}
 summon interaction 122 37 113 {Tags:["door","karst_relic","interactable","chosen"],height:5,width:2,data:{door:karst_relic}}
 summon marker 119 37 112 {Tags:["door","karst_relic","side"],data:{side:relic_karst}}
 summon marker 121 37 120 {Tags:["door","karst_relic","side"],data:{side:karst_relic}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = karst_relic door.price
scoreboard players operation price door.price = karst_relic door.price
 summon armor_stand 119 40.5 112 {Tags:["door","karst_relic"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.karst_relic"}]]}
 summon armor_stand 121 40.5 110 {Tags:["door","karst_relic"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.relic_karst"}]]}
 summon armor_stand 119 40 112 {Tags:["door","karst_relic","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 121 40 110 {Tags:["door","karst_relic","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen