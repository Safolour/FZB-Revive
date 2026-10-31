
execute as @e[tag=door,tag=relic_powerstation] run function system:death
function map:door/elemental_effect/close/relic_powerstation
 summon interaction 124 43 84 {Tags:["door","relic_powerstation","interactable","chosen"],height:5,width:2,data:{door:relic_powerstation}}
 summon interaction 126 43 84 {Tags:["door","relic_powerstation","interactable","chosen"],height:5,width:2,data:{door:relic_powerstation}}
 summon marker 125 43 85 {Tags:["door","relic_powerstation","side"],data:{side:relic_powerstation}}
 summon marker 125 43 83 {Tags:["door","relic_powerstation","side"],data:{side:powerstation_relic}}
#
scoreboard players operation @e[type=interaction,tag=door,tag=chosen] door.price = relic_powerstation door.price
scoreboard players operation price door.price = relic_powerstation door.price
 summon armor_stand 125 46.5 83 {Tags:["door","relic_powerstation"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.powerstation_relic"}]]}
 summon armor_stand 125 46.5 85 {Tags:["door","relic_powerstation"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{translate:"zb.door.area.relic_powerstation"}]]}
 summon armor_stand 125 46 83 {Tags:["door","relic_powerstation","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 summon armor_stand 125 46 85 {Tags:["door","relic_powerstation","chosen","gold"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[[{text:""}]]}
 execute as @e[type=armor_stand,tag=door,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[tag=chosen] remove chosen