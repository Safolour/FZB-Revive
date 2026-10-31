
execute as @e[tag=door,tag=powerstation_laboratory] run function system:death
function map:door/elemental_effect/close/powerstation_laboratory
 summon interaction 131 43 66 {Tags:["door","powerstation_laboratory","interactable","chosen"],height:5,width:2,data:{door:powerstation_laboratory}}
 summon interaction 131 43 68 {Tags:["door","powerstation_laboratory","interactable","chosen"],height:5,width:2,data:{door:powerstation_laboratory}}
 summon marker 130 43 67 {Tags:["door","powerstation_laboratory","side"],data:{side:powerstation_laboratory}}
 summon marker 132 43 67 {Tags:["door","powerstation_laboratory","side"],data:{side:laboratory_powerstation}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = powerstation_laboratory door.price
scoreboard players operation price door.price = powerstation_laboratory door.price
 summon armor_stand 132 46.5 67 {Tags:["door","powerstation_laboratory"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.laboratory_powerstation"}]]}
 summon armor_stand 130 46.5 67 {Tags:["door","powerstation_laboratory"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.powerstation_laboratory"}]]}
 summon armor_stand 132 46 67 {Tags:["door","powerstation_laboratory","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 130 46 67 {Tags:["door","powerstation_laboratory","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen