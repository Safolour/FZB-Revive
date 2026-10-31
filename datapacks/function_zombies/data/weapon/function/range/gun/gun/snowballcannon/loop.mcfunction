
scoreboard players operation @s weapon.range = range weapon.gun_snowballcannon
scoreboard players operation @s weapon.gun_bounce_max = bounce_max weapon.gun_snowballcannon
execute if entity @p[scores={weapon.use=1..,perk.magnetic_bullet=1}] run tag @s add magnet
scoreboard players operation @s weapon.use = uuid weapon.gun_snowballcannon
scoreboard players operation @s weapon.gun_uuid = @p[scores={weapon.use=1..}] uuid
data modify entity @s Motion set from entity @n[type=marker,tag=chosen] Pos
tag @s remove chosen