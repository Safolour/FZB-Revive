# 执行者 = 被打的敌人：damage0 weapon.state += (射手最大生命 - 当前生命) × ratio（例：满血 60、剩 10 → +50 点伤害）
execute as @p[scores={weapon.use=1..}] store result score #hp perk run data get entity @s Health 10
scoreboard players operation #bonus perk = @p[scores={weapon.use=1..}] stat.max_health
scoreboard players operation #bonus perk *= 10 number
scoreboard players operation #bonus perk -= #hp perk
execute if score #bonus perk matches ..0 run return fail
scoreboard players operation #bonus perk *= ratio perk.ashes_bullet
scoreboard players operation #bonus perk /= 10 number
scoreboard players operation damage0 weapon.state += #bonus perk
