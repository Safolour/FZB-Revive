
playsound entity.firework_rocket.large_blast record @a ~ ~ ~ 1.5 2
scoreboard players set loop zombie.rainbow 0
summon marker ~ ~ ~ {Tags:["skill.rainbowzombie"]}
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~ ~ facing entity @p[tag=target]
tp @n[type=marker,tag=skill.rainbowzombie] ~ ~1.8 ~
execute store result score random zombie.rainbow run random value 0..6
tag @s add target0
execute as @n[type=marker,tag=skill.rainbowzombie] at @s run function zombie:skill/rainbow/rifle/loop
tag @s remove target0
scoreboard players reset random zombie.rainbow
scoreboard players reset loop zombie.rainbow
kill @n[type=marker,tag=skill.rainbowzombie]
