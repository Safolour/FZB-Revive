

execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowrifle_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifle run return fail
execute if score @s weapon.gun_ultimaterainbowrifle_clip_ammo = @s weapon.gun_ultimaterainbowrifle_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowrifle/reload
