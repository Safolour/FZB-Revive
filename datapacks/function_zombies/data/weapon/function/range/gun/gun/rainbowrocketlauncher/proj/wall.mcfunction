scoreboard players set @s weapon.rainbowrocketlauncher_stop 1
execute as @e[tag=hitable,scores={zombie.health=1..},distance=..4,tag=!chosen] at @s run function weapon:range/gun/gun/rainbowrocketlauncher/proj/splash_damage
