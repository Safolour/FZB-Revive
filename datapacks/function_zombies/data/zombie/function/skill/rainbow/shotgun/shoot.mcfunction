
#playsound entity.firework_rocket.large_blast record @a ~ ~ ~ 1.5 2
playsound entity.generic.explode record @a ~ ~ ~ 1.5 2

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~ ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~3 ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~-3 ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~6 ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~-6 ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~9 ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]

summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
execute as @n[type=marker,tag=skill.rainbowzombie] run tp @s ~ ~1.8 ~ ~-9 ~
scoreboard players set loop zombie.rainbow 0
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/shotgun/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]
