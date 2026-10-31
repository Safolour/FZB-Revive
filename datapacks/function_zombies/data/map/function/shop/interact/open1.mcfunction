
tag @s add opened
tag @s add chosen
$execute at @s if entity @s[tag=height0] run summon chest_minecart ^ ^ ^-1 {Tags:["shop","$(shop)","minecart","height0","precedence","chosen0"],Rotation:[90,0],CustomName:[{text:""}],DisplayState:{Name:"barrier"},NoGravity:1b,LootTable:"map:nothing"}
execute if entity @p[scores={stat.player=2},tag=chosen] run return run kill @s
$execute as @n[type=marker,tag=shop,tag=$(shop)] at @s run tp @n[type=chest_minecart,tag=shop,tag=$(shop),tag=chosen] ^ ^-1 ^-2
$team join collision @n[type=chest_minecart,tag=shop,tag=$(shop),tag=chosen]
$scoreboard players operation @n[type=chest_minecart,tag=shop,tag=$(shop),tag=chosen] shop.uuid = uuid shop.uuid

execute as @n[type=chest_minecart,tag=chosen0] at @s rotated as @n[type=marker,tag=shop,tag=minecart] run tp @s ^ ^ ^0.1375
tag @s remove chosen
$function map:shop/interact/$(shop)/menu1
