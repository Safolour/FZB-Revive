
execute as @e[tag=door,tag=forge_powerstation] run function system:death
function map:door/elemental_effect/close/forge_powerstation
 summon interaction 106 39 66 {Tags:["door","forge_powerstation","interactable","chosen"],height:6,width:2,data:{door:forge_powerstation}}
 summon interaction 106 39 68 {Tags:["door","forge_powerstation","interactable","chosen"],height:6,width:2,data:{door:forge_powerstation}}
 summon marker 105 39 113 {Tags:["door","forge_powerstation","side"],data:{side:forge_powerstation}}
 summon marker 107 39 113 {Tags:["door","forge_powerstation","side"],data:{side:powerstation_forge}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = forge_powerstation door.price
scoreboard players operation price door.price = forge_powerstation door.price
 summon armor_stand 107 43.5 67 {Tags:["door","forge_powerstation"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.powerstation_forge"}]]}
 summon armor_stand 105 43 67 {Tags:["door","forge_powerstation"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.forge_powerstation"}]]}
 summon armor_stand 105 42.5 67 {Tags:["door","forge_powerstation","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 107 43 67 {Tags:["door","forge_powerstation","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen