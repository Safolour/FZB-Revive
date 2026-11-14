# Scheduled repairs have no entity context; resolve the surviving marker first.
execute unless entity @s[type=marker,tag=shop,tag=armor] run return run execute in minecraft:overworld as @e[type=marker,tag=shop,tag=armor,limit=1] at @s run function map:shop/summon/portal_lab/armor/1

execute as @e[type=!marker,tag=shop,tag=armor,tag=!text,tag=!opened,tag=!display] run function map:shop/interact/minecart_kill

# Called at the surviving armor marker, which already follows the active arena.
summon interaction ~ ~-3.5 ~ {Tags:["shop","armor","interaction0"],width:9,height:9}
summon chest_minecart ~ ~ ~-1 {Tags:["shop","armor","minecart","height0","precedence","chosen"],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}

execute as @n[type=chest_minecart,tag=chosen] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375
team join collision @e[tag=shop,tag=armor]
tag @e[tag=chosen] remove chosen
