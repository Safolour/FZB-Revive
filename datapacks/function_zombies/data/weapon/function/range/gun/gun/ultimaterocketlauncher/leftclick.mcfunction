

execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterocketlauncher_clip_ammo = clip_ammo weapon.gun_ultimaterocketlauncher run return fail
execute if score @s weapon.gun_ultimaterocketlauncher_clip_ammo = @s weapon.gun_ultimaterocketlauncher_ammo run return fail
function weapon:range/gun/gun/ultimaterocketlauncher/reload
