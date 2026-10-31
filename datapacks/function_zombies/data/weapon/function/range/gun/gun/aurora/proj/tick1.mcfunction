execute store result score #now weapon.aurora_born run time query gametime
execute if score @s weapon.aurora_born = #now weapon.aurora_born run return 0
execute at @s run function weapon:range/gun/gun/aurora/proj/tick
