execute if entity @s[scores={weapon.gun_aurora_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_aurora_ammo=0}] run return fail
execute if score @s weapon.gun_aurora_clip_ammo = clip_ammo weapon.gun_aurora run return fail
execute if score @s weapon.gun_aurora_clip_ammo = @s weapon.gun_aurora_ammo run return fail
function weapon:range/gun/gun/aurora/reload
