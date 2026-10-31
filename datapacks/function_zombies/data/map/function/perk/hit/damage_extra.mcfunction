# 枪、技能算伤害倍率时调用（执行者 = 被打的敌人，攻击者 = @p[scores={weapon.use=1..}]）：调整 damage_extra weapon.state（百分比）
# 金钱丢失：-10%×玩家数
execute if entity @p[scores={weapon.use=1..,perk.gold_thrower=1}] run scoreboard players operation damage_extra weapon.state -= #cut perk.gold_thrower
# 伤害吸收转化（伤害加成模式）
execute if score @p[scores={weapon.use=1..}] perk.absorption_damage matches 1.. run scoreboard players operation damage_extra weapon.state += @p[scores={weapon.use=1..}] perk.absorption_damage
# PL 温度：21°C 起 ×70%，61°C 起 ×40%（#gun_keep 由 area/lab/temperature/update 维护）
execute if score #gun_keep area.temperature matches ..99 run scoreboard players operation damage_extra weapon.state *= #gun_keep area.temperature
execute if score #gun_keep area.temperature matches ..99 run scoreboard players operation damage_extra weapon.state /= 100 number
