
scoreboard players operation uuid weapon.gun_uuid = @n[tag=chosen,tag=projectile] weapon.gun_uuid
execute as @a if score @s uuid = uuid weapon.gun_uuid run scoreboard players operation @s weapon.use = uuid weapon.gun_rocketlauncher
scoreboard players reset uuid weapon.gun_uuid

scoreboard players operation punch weapon.state = punch weapon.gun_rocketlauncher
scoreboard players operation damage weapon.state = damage weapon.gun_rocketlauncher
scoreboard players operation gold weapon.state = gold weapon.gun_rocketlauncher
function weapon:range/gun/damage/damage
tag @s remove hit