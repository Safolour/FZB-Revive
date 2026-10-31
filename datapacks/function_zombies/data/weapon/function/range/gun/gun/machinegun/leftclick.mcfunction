

execute if entity @s[scores={weapon.gun_machinegun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_machinegun_ammo=0}] run return fail
execute if score @s weapon.gun_machinegun_clip_ammo = clip_ammo weapon.gun_machinegun run return fail
execute if score @s weapon.gun_machinegun_clip_ammo = @s weapon.gun_machinegun_ammo run return fail
function weapon:range/gun/gun/machinegun/reload
