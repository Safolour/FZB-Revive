tag @s remove skill.firelord.shield
tag @s remove nogold
tag @s add hitable
scoreboard players set @s zombie.armor 80
scoreboard players set @s zombie.skill_timer 0
data merge entity @s {NoAI:0b,Invulnerable:0b}
particle flame ~ ~1 ~ 0.4 0.7 0.4 0.1 30 force @a[scores={particle=0}]
particle flame ~ ~1 ~ 0.4 0.7 0.4 0.1 15 force @a[scores={particle=1}]
