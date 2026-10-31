
execute if entity @s[tag=hit] positioned ^ ^ ^0.5 run function weapon:range/gun/gun/magnum/impact_particle
execute if entity @s[tag=hit] run function weapon:range/gun/gun/ultimatemagnum/chain
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/ultimatemagnum/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/ultimatemagnum/damage_2
