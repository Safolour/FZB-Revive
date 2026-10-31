
scoreboard players operation @s weapon.gun_ultimateeldergun_time = time weapon.gun_ultimateeldergun_time
scoreboard players operation punch weapon.state = punch weapon.gun_ultimateeldergun
scoreboard players operation damage weapon.state = damage weapon.gun_ultimateeldergun
scoreboard players operation gold weapon.state = gold weapon.gun_ultimateeldergun
function weapon:range/gun/damage/damage
tag @s remove hit