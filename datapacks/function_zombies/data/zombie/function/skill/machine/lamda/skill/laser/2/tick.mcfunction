
scoreboard players add @s zombie.lamda.laser 1

tp @s ^ ^ ^2
execute unless block ~ ~ ~ #weapon:gun_penetrable run kill @s
execute if entity @a[scores={stat.player=1},distance=..5,gamemode=adventure] as @a[scores={stat.player=1},distance=..5,gamemode=adventure] at @s run function zombie:skill/machine/lamda/skill/laser/damage

particle firework ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force @a[scores={particle=0}]
particle flame ~ ~1.5 ~ 0 0 0 0.1 40 force @a[scores={particle=0}]
particle angry_villager ~ ~1.5 ~ 1 1 1 0 10 force @a[scores={particle=0}]
particle dripping_dripstone_lava ~ ~1.5 ~ 1 1 1 0 60 force @a[scores={particle=0}]
particle enchant ~ ~1.5 ~ 1 1 1 0 20 force @a[scores={particle=0}]
particle entity_effect{color:-4980736} ~ ~1.5 ~ 1 1 1 0 20 force @a[scores={particle=0}]

execute if score @s zombie.lamda.laser matches 20.. run kill @s
