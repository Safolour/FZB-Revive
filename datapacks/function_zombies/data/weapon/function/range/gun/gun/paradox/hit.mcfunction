execute unless entity @s[tag=hit] run return 0
execute if entity @s[tag=hit1] run tag @p[scores={weapon.use=10081}] add crit_hit
scoreboard players operation damage weapon.state = damage weapon.gun_paradox
execute if score @p[scores={weapon.use=10081}] weapon.pd_state matches 2 run scoreboard players operation damage weapon.state = dream_damage weapon.gun_paradox
scoreboard players operation gold weapon.state = gold weapon.gun_paradox
execute if entity @s[tag=hit1] run scoreboard players operation gold weapon.state = gold_crit weapon.gun_paradox
scoreboard players set punch weapon.state 0
execute unless entity @s[tag=skill.firelord.shield] unless entity @s[type=marker] as @p[scores={weapon.use=10081}] run function weapon:range/gun/gun/paradox/hit_cooldown
execute if entity @s[tag=mob,tag=!paradox.captive] unless entity @s[tag=skill.firelord.shield] run function weapon:range/gun/gun/paradox/mark/from_common
function weapon:range/gun/damage/damage
tag @a[scores={weapon.use=10081}] remove crit_hit
function weapon:range/gun/gun/ashesflamethrower/proj/hit_clear
