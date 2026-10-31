tag @s add cantgyro

summon marker ~ ~ ~ {Tags:["mob.skill","skill.creation.collapse.laser","chosen"]}
tag @a[scores={stat.player=1},limit=1,sort=random,gamemode=adventure] add target
tp @s ~ ~ ~ facing entity @p[tag=target] eyes
tp @n[type=marker,tag=chosen] ~ ~1.7 ~ facing entity @p[tag=target] eyes

summon marker ~ ~ ~ {Tags:["mob.skill","skill.creation.collapse.laser0","chosen"]}
tp @n[type=marker,tag=skill.creation.collapse.laser0,tag=chosen] ~ ~1.7 ~ facing entity @p[tag=target] eyes
scoreboard players set loop zombie.creation.collapse 0
execute as @n[type=marker,tag=chosen,tag=skill.creation.collapse.laser0] at @s run function zombie:skill/creation/collapse/loop
scoreboard players reset loop zombie.creation.collapse
kill @n[type=marker,tag=skill.creation.collapse.laser0,tag=chosen]

scoreboard players operation @e[type=marker,tag=skill.creation.collapse.laser,tag=chosen] zombie.creation.collapse.match = @s zombie.creation.collapse.match

tag @a remove target
tag @e[type=marker,tag=chosen] remove chosen

playsound entity.elder_guardian.curse record @a ~ ~ ~ 2 1.4
