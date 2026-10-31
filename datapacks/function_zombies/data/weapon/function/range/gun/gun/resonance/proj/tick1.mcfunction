execute store result score #now weapon.resonance_born run time query gametime
execute if score @s weapon.resonance_born = #now weapon.resonance_born run return 0
execute at @s run function weapon:range/gun/gun/resonance/proj/tick
