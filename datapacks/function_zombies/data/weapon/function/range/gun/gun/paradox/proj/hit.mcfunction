tag @s remove gethit
function weapon:range/gun/detect/hitbox
execute unless entity @s[tag=hit] run return 0
execute if entity @s[tag=firelord.p2.ghast] run return run function weapon:range/gun/detect/invulnerable_hit
data modify storage weapon paradox.target.uuid set from entity @s UUID
function weapon:range/gun/gun/paradox/proj/hit_once with storage weapon paradox.target
function weapon:range/gun/gun/ashesflamethrower/proj/hit_clear
