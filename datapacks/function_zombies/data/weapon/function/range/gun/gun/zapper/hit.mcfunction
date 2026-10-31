tag @s add chosen
execute unless entity @p[scores={weapon.use=1..,perk.lightning_bullet=1}] as @s at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..5,limit=3,sort=nearest,tag=!chosen] at @s run function weapon:range/gun/gun/zapper/damage_2
execute if entity @p[scores={weapon.use=1..,perk.lightning_bullet=1}] as @s at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..5,limit=5,sort=nearest,tag=!chosen] at @s run function weapon:range/gun/gun/zapper/damage_2
tag @s remove chosen
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/zapper/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/zapper/damage_2
