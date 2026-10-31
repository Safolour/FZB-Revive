
scoreboard players add @s zombie.creation.electrification 1
execute store result score random zombie.random run random value 0..2
execute if score @s zombie.creation.electrification matches ..130 run scoreboard players operation @s zombie.creation.electrification += random zombie.random
scoreboard players reset random zombie.random
execute if score @s zombie.creation.electrification matches ..150 run return fail
scoreboard players set @s zombie.creation.electrification 0

execute on target if entity @s[type=player,scores={stat.player=1},distance=..8] run tag @s add target
execute unless entity @a[tag=target] run return fail

playsound entity.enderman.death record @a ~ ~ ~ 1.5 2
effect give @s slowness 2 255 true
tag @s add skill.creation.electrification.beam
scoreboard players set @s zombie.knockresistance 100
effect give @s glowing infinite 0 true
data merge entity @s {NoAI:1b}
tag @s add cantgyro

summon marker ~ ~ ~ {Tags:["mob.skill","skill.creation.electrification.beam","chosen"]}
tp @n[type=marker,tag=chosen] ~ ~ ~ facing entity @p[tag=target]
tp @n[type=marker,tag=chosen] ^ ^1.5 ^1
scoreboard players add @e[type=zombie,tag=skill.creation.electrification.beam] zombie.creation.electrification.match 1
scoreboard players add @e[type=marker,tag=skill.creation.electrification.beam] zombie.creation.electrification.match 1
tag @a[tag=target] remove target
tag @n[type=marker,tag=chosen] remove chosen