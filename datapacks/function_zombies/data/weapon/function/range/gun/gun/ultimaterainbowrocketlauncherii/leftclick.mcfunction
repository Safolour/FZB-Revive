execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncherii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrocketlauncherii run return fail
execute if score @s weapon.gun_ultimaterainbowrocketlauncherii_clip_ammo = @s weapon.gun_ultimaterainbowrocketlauncherii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowrocketlauncherii/reload
