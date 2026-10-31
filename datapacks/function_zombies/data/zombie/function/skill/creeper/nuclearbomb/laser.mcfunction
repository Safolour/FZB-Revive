
summon marker ~ ~ ~ {Tags:["skill.nuclearbomb.laser","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ ~ ~
scoreboard players set loop zombie.nuclearbomb 0
execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/creeper/nuclearbomb/loop
scoreboard players reset loop zombie.nuclearbomb
kill @e[type=marker,tag=chosen]

summon marker ~ ~ ~ {Tags:["skill.nuclearbomb.laser","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ ~120 ~
scoreboard players set loop zombie.nuclearbomb 0
execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/creeper/nuclearbomb/loop
scoreboard players reset loop zombie.nuclearbomb
kill @e[type=marker,tag=chosen]

summon marker ~ ~ ~ {Tags:["skill.nuclearbomb.laser","chosen"]}
tp @e[type=marker,tag=chosen] ~ ~ ~ ~240 ~
scoreboard players set loop zombie.nuclearbomb 0
execute as @n[type=marker,tag=chosen] at @s run function zombie:skill/creeper/nuclearbomb/loop
scoreboard players reset loop zombie.nuclearbomb
kill @e[type=marker,tag=chosen]
