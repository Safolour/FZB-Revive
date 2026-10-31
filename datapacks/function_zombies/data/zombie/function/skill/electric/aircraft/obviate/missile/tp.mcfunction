
tag @s add chosen
summon marker ~ ~ ~ {Tags:["chosen0"]}
$execute positioned $(x) $(y) $(z) if entity @s[distance=..1] unless entity @p[scores={stat.player=1},distance=..3,gamemode=adventure] run function zombie:skill/electric/aircraft/obviate/missile/relocate
$execute as @n[type=marker] at @s rotated as @n[type=block_display,tag=chosen] positioned ^ ^ ^1 facing $(x) $(y) $(z) positioned ^ ^ ^0.25 run tp @s ~ ~ ~
tp @s ^ ^ ^0.5 facing entity @n[type=marker,tag=chosen0]
tag @s remove chosen
kill @n[type=marker,tag=chosen0]