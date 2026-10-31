

execute if entity @s[scores={weapon.gun_rocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rocketlauncher_ammo=0}] run return fail
execute if score @s weapon.gun_rocketlauncher_clip_ammo = clip_ammo weapon.gun_rocketlauncher run return fail
execute if score @s weapon.gun_rocketlauncher_clip_ammo = @s weapon.gun_rocketlauncher_ammo run return fail
function weapon:range/gun/gun/rocketlauncher/reload
