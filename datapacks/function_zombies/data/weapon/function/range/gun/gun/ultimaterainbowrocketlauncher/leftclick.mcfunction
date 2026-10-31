execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncher run return fail
execute if score @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncher_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowrocketlauncher/reload
