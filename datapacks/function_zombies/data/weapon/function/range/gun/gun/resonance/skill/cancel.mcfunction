# Cancellation keeps the continuously drained charge; natural completion is zero.
execute if score @s weapon.res_age matches 0..100 run function weapon:range/gun/gun/resonance/skill/charge
function weapon:range/gun/gun/resonance/skill/stop
