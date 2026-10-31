
summon marker ~ ~ ~ {Tags:["skill.lamda.attack.knockback"]}

execute positioned ^ ^ ^1 as @a[scores={stat.player=1},distance=..4,gamemode=adventure] at @s run function zombie:skill/machine/lamda/skill/attack/damage

kill @n[type=marker,tag=skill.lamda.attack.knockback]
