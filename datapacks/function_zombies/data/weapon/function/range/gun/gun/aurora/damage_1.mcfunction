tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_aurora
scoreboard players operation damage weapon.state = damage weapon.gun_aurora
# 伤害 = 基础伤害 × (1 + 命中时玩家速度 / 走路速度)。
scoreboard players operation #aurora_factor weapon.state = @a[tag=aurora_shooter,limit=1] weapon.aurora_speed
scoreboard players add #aurora_factor weapon.state 216
scoreboard players operation damage weapon.state *= #aurora_factor weapon.state
scoreboard players set #aurora_walk weapon.state 216
scoreboard players operation damage weapon.state /= #aurora_walk weapon.state
execute if entity @s[tag=floating] run scoreboard players operation damage weapon.state *= 2 number
scoreboard players operation gold weapon.state = gold_crit weapon.gun_aurora
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
