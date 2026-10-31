
scoreboard players operation @s weapon.gun_eldergun_time = time weapon.gun_eldergun_time
scoreboard players operation punch weapon.state = punch weapon.gun_eldergun
scoreboard players operation damage weapon.state = damage weapon.gun_eldergun
scoreboard players operation gold weapon.state = gold weapon.gun_eldergun
function weapon:range/gun/damage/damage
tag @s remove hit