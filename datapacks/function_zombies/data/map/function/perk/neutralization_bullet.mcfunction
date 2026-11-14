# 中和子弹：火焰发射器系列命中非 boss 敌人时，每次附加首次触发时血量的 2%
execute if entity @s[tag=setting.dummy] run scoreboard players operation @s perk.neutralization_base = @s zombie.max_health
execute unless score @s perk.neutralization_base = @s perk.neutralization_base run scoreboard players operation @s perk.neutralization_base = @s zombie.health
scoreboard players operation #extra perk = @s perk.neutralization_base
scoreboard players operation #extra perk /= 50 number
scoreboard players operation damage0 weapon.state += #extra perk
