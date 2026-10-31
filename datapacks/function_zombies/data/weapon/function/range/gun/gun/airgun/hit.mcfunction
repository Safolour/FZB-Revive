
execute positioned ~ ~ ~ run summon marker ^ ^ ^-1 {Tags:["target","airgun","gun","push_wave"]}
execute as @n[type=marker,tag=target,tag=airgun,tag=push_wave] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/gun/gun/airgun/summon1
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/airgun/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/airgun/damage_2
