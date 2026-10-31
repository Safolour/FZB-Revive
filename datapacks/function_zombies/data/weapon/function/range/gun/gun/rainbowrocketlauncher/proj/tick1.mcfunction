execute store result score #now weapon.rainbowrocketlauncher_born run time query gametime
execute if score @s weapon.rainbowrocketlauncher_born = #now weapon.rainbowrocketlauncher_born run return 0
execute at @s run function weapon:range/gun/gun/rainbowrocketlauncher/proj/tick
