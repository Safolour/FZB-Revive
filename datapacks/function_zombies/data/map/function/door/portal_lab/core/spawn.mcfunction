execute unless score lab_core door.price = lab_core door.price run return fail
execute as @e[tag=door,tag=lab_core] run function system:death
summon interaction 301.5 92 171.5 {Tags:["door","lab_core","interactable"],height:5f,width:2f,data:{door:lab_core}}
summon interaction 300.5 92 171.5 {Tags:["door","lab_core","interactable"],height:5f,width:2f,data:{door:lab_core}}
summon interaction 299.5 92 171.5 {Tags:["door","lab_core","interactable"],height:5f,width:2f,data:{door:lab_core}}
summon marker 300.5 92 170.5 {Tags:["door","lab_core","side","lab_side"]}
summon marker 300.5 92 173.5 {Tags:["door","lab_core","side","core_side"]}
scoreboard players operation @e[type=interaction,tag=door,tag=lab_core] door.price = lab_core door.price
scoreboard players operation price door.price = lab_core door.price
summon armor_stand 300.5 95 173.5 {Tags:["door","lab_core","core_label"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:{translate:"zb.door.area.core_lab",color:"green"}}
summon armor_stand 300.5 95.4 170.5 {Tags:["door","lab_core","lab_label"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:{translate:"zb.door.area.lab_core",color:"#ff0000"}}
summon armor_stand 300.5 94.7 173.5 {Tags:["door","lab_core","core_price","gold","chosen"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:{text:""}}
summon armor_stand 300.5 95.1 170.5 {Tags:["door","lab_core","lab_price","gold","chosen"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:{text:""}}
execute as @e[type=armor_stand,tag=door,tag=lab_core,tag=gold,tag=chosen] run function map:door/elemental_effect/spawn/text
tag @e[type=armor_stand,tag=door,tag=lab_core,tag=chosen] remove chosen
