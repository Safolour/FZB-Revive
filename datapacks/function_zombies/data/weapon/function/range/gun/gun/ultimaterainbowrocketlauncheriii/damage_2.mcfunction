execute if entity @s[tag=firelord.p2.ghast] run return run function weapon:range/gun/detect/invulnerable_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ultimaterainbowrocketlauncheriii
scoreboard players operation damage weapon.state = damage weapon.gun_ultimaterainbowrocketlauncheriii
scoreboard players operation gold weapon.state = gold weapon.gun_ultimaterainbowrocketlauncheriii
function weapon:range/gun/damage/damage
tag @s remove hit
