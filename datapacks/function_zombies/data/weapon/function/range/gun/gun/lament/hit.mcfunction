# 录像：命中处播 crit（count 3、offset 0.5），在弹道停止的位置
execute if entity @s[tag=hit] run particle crit ~ ~ ~ 0.5 0.5 0.5 0 3 force @a[scores={particle=0..1}]
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/lament/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/lament/damage_2
