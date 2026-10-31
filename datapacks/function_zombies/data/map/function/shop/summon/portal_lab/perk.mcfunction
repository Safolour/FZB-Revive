
execute as @e[tag=shop,tag=perk] run function map:shop/interact/minecart_kill

summon interaction 310 89.5 144 {Tags:["shop","perk","interaction0"],width:9,height:9}
summon chest_minecart 311 93 144 {Tags:["shop","perk","minecart","height0","precedence","chosen"],Rotation:[90,0],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}
summon marker 310 93 144 {Tags:["shop","perk","minecart"],Rotation:[90,0]}
summon armor_stand 310 95.5 145 {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.shop.perk_shop.1"}],Tags:["shop","perk",text]}
summon armor_stand 310 96 145 {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.shop.perk_shop.0"}],Tags:["shop","perk",text]}
execute as @n[type=chest_minecart,tag=chosen] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375
team join collision @e[tag=shop,tag=perk]
tag @e[tag=chosen] remove chosen