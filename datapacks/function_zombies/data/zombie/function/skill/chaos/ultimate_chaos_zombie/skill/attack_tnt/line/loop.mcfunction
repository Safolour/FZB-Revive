execute if entity @a[tag=target] run particle electric_spark ~ ~0.1 ~ 0 0 0 10000 1 force @a[scores={particle=0}]

scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_attacktntline 1

execute if entity @a[tag=target,distance=..1.5] run scoreboard players set @s zombie.chaos.ultimate_chaos_zombie.skill_attacktntline 100

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_attacktntline matches ..80 positioned ^ ^ ^0.5 run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/line/loop
