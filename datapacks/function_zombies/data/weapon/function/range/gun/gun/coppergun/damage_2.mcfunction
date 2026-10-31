scoreboard players operation punch weapon.state = punch weapon.gun_coppergun
scoreboard players operation damage weapon.state = damage weapon.gun_coppergun
scoreboard players operation gold weapon.state = gold weapon.gun_coppergun
function weapon:range/gun/damage/damage
tag @s remove hit
