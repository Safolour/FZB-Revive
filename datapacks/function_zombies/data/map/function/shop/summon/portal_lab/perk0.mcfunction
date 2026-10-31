
execute as @e[type=!marker,tag=shop,tag=perk,tag=!text,tag=!opened,tag=!display] run function map:shop/interact/minecart_kill

summon interaction 310 89.5 144 {Tags:["shop","perk","interaction0"],width:9,height:9}
summon chest_minecart 311 93 144 {Tags:["shop","perk","minecart","height0","precedence","chosen"],Rotation:[90,0],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}
execute as @n[type=chest_minecart,tag=chosen] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375
team join collision @e[tag=shop,tag=perk]
tag @e[tag=chosen] remove chosen