$execute if data entity @e[tag=resonance_active,limit=1] data.hits[{uuid:$(uuid)}] run return 0
$data modify entity @e[tag=resonance_active,limit=1] data.hits append value {uuid:$(uuid)}
function weapon:range/gun/gun/resonance/charge_hit
function weapon:range/gun/gun/resonance/proj/hit_damage with entity @e[tag=resonance_active,limit=1] data
scoreboard players remove @e[tag=resonance_active,limit=1] weapon.resonance_pierce 1
