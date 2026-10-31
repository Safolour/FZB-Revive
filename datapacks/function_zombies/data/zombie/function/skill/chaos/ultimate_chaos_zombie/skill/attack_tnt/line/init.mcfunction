execute on target run tag @s add target

summon marker ~ ~ ~ {Tags:["mob.skill","skill.ultimatechaoszombie","skill.ultimatechaoszombie.attack_tnt","chosen"]}

tp @e[type=marker,tag=chosen] ~ ~ ~ facing entity @a[tag=target,limit=1]
execute as @e[type=marker,tag=chosen] at @s run tp @s ~ ~ ~ ~ 0

scoreboard players set @e[type=marker,tag=chosen] zombie.chaos.ultimate_chaos_zombie.skill_attacktntline 0
execute as @e[type=marker,tag=chosen] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/line/loop

execute as @a[tag=target] at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/attack_tnt/line/circle

scoreboard players reset @s zombie.chaos.ultimate_chaos_zombie.skill_attacktntline
tag @a remove target
kill @e[type=marker,tag=chosen]
