

execute if entity @s[scores={weapon.gun_musicgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_musicgun_ammo=0}] run return fail
execute if score @s weapon.gun_musicgun_clip_ammo = clip_ammo weapon.gun_musicgun run return fail
execute if score @s weapon.gun_musicgun_clip_ammo = @s weapon.gun_musicgun_ammo run return fail
function weapon:range/gun/gun/musicgun/reload
