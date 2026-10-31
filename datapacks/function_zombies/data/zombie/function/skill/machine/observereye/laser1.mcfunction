
scoreboard players set loop zombie.observereye 0
summon marker ~ ~ ~ {Tags:["skill.observereye.laser"]}
tp @n[type=marker,tag=skill.observereye.laser] ~ ~-1 ~ facing entity @n[type=marker,tag=skill.observereye.target]
execute as @n[type=marker,tag=skill.observereye.laser] at @s run tp @s ~ ~1 ~
execute as @n[type=marker,tag=skill.observereye.laser] at @s run function zombie:skill/machine/observereye/loop
scoreboard players reset loop zombie.observereye
kill @n[type=marker,tag=skill.observereye.laser]
