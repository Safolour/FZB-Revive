tag @s remove gethit
function weapon:range/gun/detect/hitbox
execute unless entity @s[tag=hit] run return 0
data modify storage weapon resonance_target.uuid set from entity @s UUID
function weapon:range/gun/gun/resonance/proj/hit_once with storage weapon resonance_target
tag @s remove hit
tag @s remove hit1
tag @s remove hit2
