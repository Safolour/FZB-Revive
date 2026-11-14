execute if entity @s[scores={weapon.gun_paradox_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_paradox_ammo=0}] run return fail
execute if score @s weapon.gun_paradox_clip_ammo = clip_ammo weapon.gun_paradox run return fail
execute if score @s weapon.gun_paradox_clip_ammo = @s weapon.gun_paradox_ammo run return fail
function weapon:range/gun/gun/paradox/reload
