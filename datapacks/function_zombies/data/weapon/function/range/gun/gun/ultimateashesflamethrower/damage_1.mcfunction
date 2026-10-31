tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ultimateashesflamethrower
scoreboard players operation damage weapon.state = damage weapon.gun_ultimateashesflamethrower
# lore「对火焰僵尸效果较弱」/「额外伤害 0.5x」：打火焰僵尸伤害减半
execute if entity @s[tag=firezb] run scoreboard players operation damage weapon.state /= 2 number
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ultimateashesflamethrower
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
