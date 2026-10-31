
execute positioned ~ ~ ~ run summon marker ^ ^ ^-1 {Tags:["target","ultimateairgun","gun","push_wave"]}
execute as @n[type=marker,tag=target,tag=ultimateairgun,tag=push_wave] at @s rotated as @p[scores={weapon.use=1..}] facing ^ ^ ^1 run function weapon:range/gun/gun/ultimateairgun/summon1
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/ultimateairgun/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/ultimateairgun/damage_2
