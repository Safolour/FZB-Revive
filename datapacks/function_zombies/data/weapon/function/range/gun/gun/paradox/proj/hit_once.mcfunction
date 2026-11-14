$execute if data entity @e[tag=paradox.active,limit=1] data.hits[{uuid:$(uuid)}] run return 0
$data modify entity @e[tag=paradox.active,limit=1] data.hits append value {uuid:$(uuid)}
# Unlimited penetration; each projectile still records each enemy UUID once.
execute if entity @s[tag=hit1] run tag @a[tag=paradox.shooter,limit=1] add crit_hit
scoreboard players operation damage weapon.state = @e[tag=paradox.active,limit=1] weapon.pd_damage
scoreboard players operation gold weapon.state = gold weapon.gun_paradox
execute if entity @s[tag=hit1] run scoreboard players operation gold weapon.state = gold_crit weapon.gun_paradox
scoreboard players set punch weapon.state 0
execute if entity @s[tag=mob,tag=!paradox.captive] unless entity @s[tag=skill.firelord.shield] run function weapon:range/gun/gun/paradox/mark/from_projectile
function weapon:range/gun/damage/damage
tag @a[tag=paradox.shooter] remove crit_hit
# Reduce cooldown once per actual enemy hit; shields are excluded.
execute unless entity @s[tag=skill.firelord.shield] unless entity @s[type=marker] as @a[tag=paradox.shooter,limit=1] run function weapon:range/gun/gun/paradox/hit_cooldown
