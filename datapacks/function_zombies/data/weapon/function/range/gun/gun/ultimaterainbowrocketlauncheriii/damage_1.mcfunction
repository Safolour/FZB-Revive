tag @p[scores={weapon.use=1..}] add crit_hit
scoreboard players operation punch weapon.state = punch weapon.gun_ultimaterainbowrocketlauncheriii
scoreboard players operation damage weapon.state = damage weapon.gun_ultimaterainbowrocketlauncheriii
scoreboard players operation gold weapon.state = gold_crit weapon.gun_ultimaterainbowrocketlauncheriii
function weapon:range/gun/damage/damage
tag @p[scores={weapon.use=1..}] remove crit_hit
tag @s remove hit
