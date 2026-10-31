

execute if entity @s[scores={weapon.gun_magnum_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_magnum_ammo=0}] run return fail
execute if score @s weapon.gun_magnum_clip_ammo = clip_ammo weapon.gun_magnum run return fail
execute if score @s weapon.gun_magnum_clip_ammo = @s weapon.gun_magnum_ammo run return fail
function weapon:range/gun/gun/magnum/reload
