execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncheriii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncheriii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowrocketlauncheriii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncheriii run return fail
execute if score @s weapon.gun_ultimaterainbowrocketlauncheriii_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncheriii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowrocketlauncheriii/reload
