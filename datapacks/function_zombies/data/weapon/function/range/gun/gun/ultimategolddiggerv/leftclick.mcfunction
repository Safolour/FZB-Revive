

execute if entity @s[scores={weapon.gun_ultimategolddiggerv_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_ammo=0}] run return fail
execute if score @s weapon.gun_ultimategolddiggerv_clip_ammo = clip_ammo weapon.gun_ultimategolddiggerv run return fail
execute if score @s weapon.gun_ultimategolddiggerv_clip_ammo = @s weapon.gun_ultimategolddiggerv_ammo run return fail
function weapon:range/gun/gun/ultimategolddiggerv/reload
