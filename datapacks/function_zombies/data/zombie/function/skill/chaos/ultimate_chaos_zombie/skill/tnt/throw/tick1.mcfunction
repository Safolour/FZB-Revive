scoreboard players add @s zombie.chaos.ultimate_chaos_zombie.skill_timer 1

particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[scores={particle=0}]
particle electric_spark ~ ~ ~ 0 0 0 0.5 2 force @a[scores={particle=0}]
particle smoke ~ ~ ~ 0 0 0 0.1 2 force @a[scores={particle=0}]

execute at @s align xyz unless block ~ ~-1 ~ #weapon:gun_penetrable as @s at @s run function zombie:skill/chaos/ultimate_chaos_zombie/skill/tnt/tnt/init

execute if score @s zombie.chaos.ultimate_chaos_zombie.skill_timer matches 100.. run kill @s
