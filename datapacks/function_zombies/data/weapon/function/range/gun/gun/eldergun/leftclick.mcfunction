

execute if entity @s[scores={weapon.gun_eldergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_eldergun_ammo=0}] run return fail
execute if score @s weapon.gun_eldergun_clip_ammo = clip_ammo weapon.gun_eldergun run return fail
execute if score @s weapon.gun_eldergun_clip_ammo = @s weapon.gun_eldergun_ammo run return fail
function weapon:range/gun/gun/eldergun/reload
