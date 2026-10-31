
#particle firework ~ ~ ~
tp @s ^ ^ ^0.5
execute if entity @p[scores={stat.player=1},distance=..6,gamemode=adventure] run return fail
tag @s add chosen
summon marker ~ ~ ~ {Tags:["chosen0"]}
execute as @n[type=marker] at @s rotated as @n[type=block_display,tag=chosen] positioned ^ ^ ^1 facing entity @p[scores={stat.player=1},gamemode=adventure] eyes positioned ^ ^ ^0.0075 run tp @s ~ ~ ~
tp @s ^ ^ ^0.75 facing entity @n[type=marker,tag=chosen0]
tag @s remove chosen
kill @n[type=marker,tag=chosen0]
