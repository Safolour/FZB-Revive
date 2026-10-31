data remove storage map:showcase item
kill @e[tag=area.lab.showcase.display]
summon block_display ~ ~ ~ {block_state:{Name:"glass"},Tags:["area.lab.showcase.display","chosen"],transformation:{translation:[-0.375,0,-0.375],scale:[0.75,0.75,0.75],left_rotation:{angle:0,axis:[0,0,0]},right_rotation:{angle:0,axis:[0,0,0]}}}
summon interaction ~ ~ ~ {Tags:["area","interactable","area.lab.showcase.display","chosen"],height:0.75,width:0.75}
summon armor_stand ~ ~ ~ {Tags:["area","text","area.lab.showcase.display","chosen"],Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:0b,CustomName:''}
ride @n[type=armor_stand,tag=chosen] mount @n[type=interaction,tag=chosen]
tag @e[tag=chosen] remove chosen