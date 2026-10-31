scoreboard players add @s zombie.remains.bomber.skill_timer 1

execute if entity @s[tag=skill.remains.bomber.throw.crimson] run particle flame ~ ~0.2 ~ 0 0 0 0.02 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.throw.warped] run particle soul_fire_flame ~ ~0.2 ~ 0 0 0 0.02 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.throw.ashes] run particle smoke ~ ~0.2 ~ 0 0 0 0.02 1 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.throw.ashes] run particle white_ash ~ ~0.2 ~ 0 0 0 0.02 3 force @a[scores={particle=0}]
execute if entity @s[tag=skill.remains.bomber.throw.spirit] run particle soul ~ ~0.2 ~ 0 0 0 0.02 1 force @a[scores={particle=0}]

execute at @s align xyz unless block ~ ~-1 ~ #weapon:gun_penetrable as @s at @s run function zombie:skill/remains/bomber/tnt/init

execute if score @s zombie.remains.bomber.skill_timer matches 100.. run kill @s
