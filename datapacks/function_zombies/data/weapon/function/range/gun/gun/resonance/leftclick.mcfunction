execute if entity @s[scores={weapon.gun_resonance_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_resonance_ammo=0}] run return fail
execute if score @s weapon.gun_resonance_clip_ammo = clip_ammo weapon.gun_resonance run return fail
execute if score @s weapon.gun_resonance_clip_ammo = @s weapon.gun_resonance_ammo run return fail
function weapon:range/gun/gun/resonance/reload
