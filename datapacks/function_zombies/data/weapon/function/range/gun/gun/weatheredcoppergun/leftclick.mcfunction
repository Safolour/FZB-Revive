execute if entity @s[scores={weapon.gun_weatheredcoppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_weatheredcoppergun_ammo=0}] run return fail
execute if score @s weapon.gun_weatheredcoppergun_clip_ammo = clip_ammo weapon.gun_weatheredcoppergun run return fail
execute if score @s weapon.gun_weatheredcoppergun_clip_ammo = @s weapon.gun_weatheredcoppergun_ammo run return fail
function weapon:range/gun/gun/weatheredcoppergun/reload
