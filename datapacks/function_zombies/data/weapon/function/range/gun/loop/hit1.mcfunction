
tag @s remove gethit

function weapon:range/gun/detect/hitbox
execute if entity @s[tag=hit] run scoreboard players set @n[type=!marker,tag=chosen,tag=projectile] weapon.range -447
execute if entity @n[tag=snowballcannon,scores={weapon.use=10009}] run function weapon:range/gun/gun/snowballcannon/hit
execute if entity @n[tag=rocketlauncher,scores={weapon.use=10011}] run function weapon:range/gun/gun/rocketlauncher/hit
execute if entity @n[tag=ultimatesnowballcannon,scores={weapon.use=10019}] run function weapon:range/gun/gun/ultimatesnowballcannon/hit
execute if entity @n[tag=ultimaterocketlauncher,scores={weapon.use=10022}] run function weapon:range/gun/gun/ultimaterocketlauncher/hit

tag @s remove hit
tag @s remove hit1
tag @s remove hit2