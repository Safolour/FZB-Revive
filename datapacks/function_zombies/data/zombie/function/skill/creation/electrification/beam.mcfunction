
scoreboard players set loop zombie.creation.electrification 0
summon marker ~ ~ ~ {Tags:["skill.creation.electrification.beam.particle","chosen"]}
tp @n[type=marker,tag=chosen] ~ ~ ~ ~ ~
execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/creation/electrification/loop
kill @n[type=marker,tag=chosen]
scoreboard players reset loop zombie.creation.electrification
