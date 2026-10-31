execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=0}] run return fail
execute if score @s weapon.gun_rainbowrocketlauncher_clip_ammo = clip_ammo weapon.gun_rainbowrocketlauncher run return fail
execute if score @s weapon.gun_rainbowrocketlauncher_clip_ammo = @s weapon.gun_rainbowrocketlauncher_ammo run return fail
function weapon:range/gun/gun/rainbowrocketlauncher/reload
