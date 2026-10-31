tag @s add chosen
execute at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..5,tag=!chosen] at @s run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/damage_2
tag @s remove chosen
execute if entity @s[tag=hit,tag=hit1] run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/damage_1
execute if entity @s[tag=hit,tag=hit2] run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/damage_2
