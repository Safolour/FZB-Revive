scoreboard players operation punch weapon.state = punch weapon.gun_parallax
execute if score #parallax_mode weapon.state matches 0 run scoreboard players set punch weapon.state 125
scoreboard players operation damage weapon.state = damage weapon.gun_parallax
# 蓝色：伤害 ×2
execute if score #parallax_mode weapon.state matches 0 run scoreboard players operation damage weapon.state *= 2 number
# 红束沿击退反方向吸引目标。
execute if score #parallax_mode weapon.state matches 1 run scoreboard players operation punch weapon.state *= -1 number
execute if score #parallax_mode weapon.state matches 1 if function weapon:range/gun/gun/parallax/is_creation run scoreboard players operation damage weapon.state *= 5 number
scoreboard players operation gold weapon.state = gold weapon.gun_parallax
function weapon:range/gun/damage/damage
tag @s remove hit
