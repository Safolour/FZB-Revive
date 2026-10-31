# Match the COMPLETE map name, including translation arguments and variants.
data remove storage weapon:resonance kind
execute if data entity @s data.name run data modify storage weapon:resonance kind.name set from entity @s data.name
execute if data storage weapon:resonance kind.name run return run function weapon:range/gun/gun/resonance/skill/kind with storage weapon:resonance kind
execute if data entity @s CustomName run data modify storage weapon:resonance kind.name set from entity @s CustomName
execute if data storage weapon:resonance kind.name run return run function weapon:range/gun/gun/resonance/skill/custom_kind with storage weapon:resonance kind
# Unnamed third-party targets remain individually hittable; no broad fallback.
function weapon:range/gun/gun/resonance/skill/damage
