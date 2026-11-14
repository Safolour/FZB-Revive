execute if entity @s[tag=firelord.p2.ghast] run return run function weapon:range/gun/detect/invulnerable_hit

scoreboard players operation @s weapon.gun_snowballcannon_time = time weapon.gun_snowballcannon_time

scoreboard players operation uuid weapon.gun_uuid = @n[tag=chosen,tag=projectile] weapon.gun_uuid
execute as @a if score @s uuid = uuid weapon.gun_uuid run scoreboard players operation @s weapon.use = uuid weapon.gun_snowballcannon
scoreboard players reset uuid weapon.gun_uuid

scoreboard players operation punch weapon.state = punch weapon.gun_snowballcannon
scoreboard players operation damage weapon.state = damage weapon.gun_snowballcannon
scoreboard players operation gold weapon.state = gold weapon.gun_snowballcannon
function weapon:range/gun/damage/damage
tag @s remove hit
playsound minecraft:entity.generic.big_fall ambient @a ~ ~ ~ 1 0 0
scoreboard players set @p[scores={weapon.use=1..}] weapon.use 0