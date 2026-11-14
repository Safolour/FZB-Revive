# 执行者 = 被打的敌人：每缺 1 点生命加 ratio 内部伤害；当前 ratio=5，即 +0.5 点伤害（例：满血 60、剩 10 → +25 点伤害）
execute as @p[scores={weapon.use=1..}] store result score #hp perk run data get entity @s Health 10
scoreboard players operation #bonus perk = @p[scores={weapon.use=1..}] stat.max_health
scoreboard players operation #bonus perk *= 10 number
scoreboard players operation #bonus perk -= #hp perk
execute if score #bonus perk matches ..0 run return fail
scoreboard players operation #bonus perk *= ratio perk.ashes_bullet
scoreboard players operation #bonus perk /= 10 number
scoreboard players operation damage0 weapon.state += #bonus perk
