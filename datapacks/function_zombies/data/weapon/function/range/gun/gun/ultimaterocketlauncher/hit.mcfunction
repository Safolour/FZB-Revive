tag @s add chosen
execute as @s at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..5,tag=!chosen] at @s run function weapon:range/gun/gun/ultimaterocketlauncher/damage_2
tag @s remove chosen
particle explosion ~ ~ ~ 0 0 0 0 0 force @a[scores={gun.particle=0..1}]
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/ultimaterocketlauncher/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/ultimaterocketlauncher/damage_2
