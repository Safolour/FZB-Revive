

execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowsniper_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniper run return fail
execute if score @s weapon.gun_ultimaterainbowsniper_clip_ammo = @s weapon.gun_ultimaterainbowsniper_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowsniper/reload
