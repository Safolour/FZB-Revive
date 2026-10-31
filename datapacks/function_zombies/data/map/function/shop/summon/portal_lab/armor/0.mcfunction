
execute as @e[tag=shop,tag=armor] run function map:shop/interact/minecart_kill

summon interaction 290 89.5 131 {Tags:["shop","armor","interaction0"],width:9,height:9}
summon chest_minecart 290 93 130 {Tags:["shop","armor","minecart","height0","precedence","chosen"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}
summon marker 290 93 131 {Tags:["shop","armor","minecart","chosen"],Rotation:[0,0]}
summon armor_stand 291 95.5 131 {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.shop.armor_shop.1"}],Tags:["shop","armor",text]}
summon armor_stand 291 96 131 {Marker:1b,Invisible:1b,Small:1b,CustomNameVisible:1b,CustomName:[{translate:"zb.shop.armor_shop.0"}],Tags:["shop","armor",text]}
summon armor_stand 291 93 130 {Tags:["shop","armor","display","move"],equipment:{feet:{id:leather_boots},legs:{id:leather_leggings},chest:{id:leather_chestplate},head:{id:leather_helmet}},Marker:1b,ShowArms:1b,NoGravity:1b}
execute as @n[type=armor_stand,tag=move,tag=display] at @s run tp @s ~0.5 ~ ~
execute as @n[type=chest_minecart,tag=chosen] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375

team join collision @e[tag=shop,tag=armor]
tag @e[tag=chosen] remove chosen