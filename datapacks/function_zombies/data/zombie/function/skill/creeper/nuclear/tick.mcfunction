execute if entity @s[tag=skill.nuclearcreeper.explosion] run function zombie:skill/creeper/nuclear/tick0

effect give @a[scores={stat.player=1},distance=..2] slowness 1 4 false

tp @s[tag=!skill.nuclearcreeper.explosion] ^ ^ ^0.03
#tp @s[tag=!skill.nuclearcreeper.explosion] ^ ^ ^0.2

scoreboard players operation match zombie.nuclearcreeper.match = @s zombie.nuclearcreeper.match
execute as @e[type=marker,tag=skill.nuclearcreeper.particle] if score @s zombie.nuclearcreeper.match = match zombie.nuclearcreeper.match run tag @s add target

tp @n[type=marker,tag=target] ~ ~ ~
execute as @n[type=marker,tag=target] at @s run function zombie:skill/creeper/nuclear/particle

scoreboard players reset match zombie.nuclearcreeper.match
tag @e[type=marker,tag=target] remove target

execute if score @s zombie.nuclearcreeper matches ..10 run particle dust_color_transition{from_color:[1,1,0],to_color:[0,0,0],scale:1} ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]
execute if score @s zombie.nuclearcreeper matches 11.. run particle dust_color_transition{from_color:[0,0,0],to_color:[1,1,0],scale:1} ~ ~2 ~ 0 0 0 0 1 force @a[scores={particle=0}]

scoreboard players add @s zombie.nuclearcreeper 1
execute if score @s zombie.nuclearcreeper matches ..20 run return fail

scoreboard players set @s zombie.nuclearcreeper 0

playsound entity.creeper.hurt record @a ~ ~ ~ 2 1

tag @s[tag=skill.nuclearcreeper.0] add skill.nuclearcreeper.1
tag @s[tag=!skill.nuclearcreeper.0] add skill.nuclearcreeper.0
tag @s[tag=skill.nuclearcreeper.1] remove skill.nuclearcreeper.0
tag @s[tag=skill.nuclearcreeper.1] remove skill.nuclearcreeper.1

execute if entity @s[tag=skill.nuclearcreeper.0] run data merge entity @s {powered:1b}
execute if entity @s[tag=!skill.nuclearcreeper.0] run data merge entity @s {powered:0b}

execute if entity @s[tag=skill.nuclearcreeper.explosion] run return fail

execute positioned 300 91 168 if entity @s[distance=..3] run function zombie:skill/creeper/nuclear/explosion/init
execute positioned 300 91 168 if entity @s[distance=..3] run tag @s add skill.nuclearcreeper.explosion
