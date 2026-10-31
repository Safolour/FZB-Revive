
execute positioned ^ ^ ^1 facing entity @p[scores={stat.player=1}] eyes rotated ~ ~7.5 positioned ^ ^ ^0.25 run summon marker ~ ~ ~ {Tags:["target"]}

tp @s ~ ~ ~ facing entity @n[type=marker,tag=target] eyes
kill @n[type=marker,tag=target]