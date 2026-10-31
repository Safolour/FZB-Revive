
execute as @e[tag=mob,tag=!tp] if score @s zombie.uuid = uuid zombie.uuid run tag @s add target0
execute positioned ^ ^ ^1 facing entity @n[tag=target0] eyes rotated ~ ~10 positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["target"]}
execute positioned ~ ~-1.5 ~ if entity @n[tag=target0,distance=..1.5] run scoreboard players set @s zombie.creation.benediction 4470
tp @s ~ ~ ~ facing entity @n[type=marker,tag=target] eyes
kill @n[type=marker,tag=target]
tag @e[tag=target0] remove target0