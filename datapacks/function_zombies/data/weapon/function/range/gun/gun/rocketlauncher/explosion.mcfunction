tag @s add chosen
execute as @s at @s as @e[tag=hitable,scores={zombie.health=1..},distance=..4,tag=!chosen] at @s run function weapon:range/gun/gun/rocketlauncher/damage_2
tag @s remove chosen
particle explosion ^ ^ ^-1 0 0 0 0 0 force @a[scores={gun.particle=0..1}]
