
scoreboard players operation uuid weapon.gun_uuid = @n[tag=chosen,tag=projectile] weapon.gun_uuid
execute as @a if score @s uuid = uuid weapon.gun_uuid run scoreboard players operation @s weapon.use = uuid weapon.gun_ultimaterocketlauncher
scoreboard players reset uuid weapon.gun_uuid

tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ultimaterocketlauncher
scoreboard players operation damage weapon.state = damage weapon.gun_ultimaterocketlauncher
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ultimaterocketlauncher
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit

scoreboard players set @p[scores={weapon.use=1..}] weapon.use 0