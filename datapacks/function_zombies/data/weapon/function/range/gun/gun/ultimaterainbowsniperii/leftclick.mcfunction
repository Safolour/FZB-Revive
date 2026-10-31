

execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowsniperii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniperii run return fail
execute if score @s weapon.gun_ultimaterainbowsniperii_clip_ammo = @s weapon.gun_ultimaterainbowsniperii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowsniperii/reload
