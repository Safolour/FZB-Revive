tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ashesflamethrower
scoreboard players operation damage weapon.state = damage weapon.gun_ashesflamethrower
# lore「对火焰僵尸效果较弱」/「额外伤害 0.5x」：打火焰僵尸伤害减半
execute if entity @s[tag=firezb] run scoreboard players operation damage weapon.state /= 2 number
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ashesflamethrower
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
