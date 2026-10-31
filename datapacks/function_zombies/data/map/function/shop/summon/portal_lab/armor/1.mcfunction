
execute as @e[type=!marker,tag=shop,tag=armor,tag=!text,tag=!opened,tag=!display] run function map:shop/interact/minecart_kill

summon interaction 290 89.5 131 {Tags:["shop","armor","interaction0"],width:9,height:9}
summon chest_minecart 290 93 130 {Tags:["shop","armor","minecart","height0","precedence","chosen"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}

execute as @n[type=chest_minecart,tag=chosen] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375
team join collision @e[tag=shop,tag=armor]
tag @e[tag=chosen] remove chosen