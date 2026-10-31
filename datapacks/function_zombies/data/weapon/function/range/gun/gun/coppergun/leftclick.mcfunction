execute if entity @s[scores={weapon.gun_coppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_coppergun_ammo=0}] run return fail
execute if score @s weapon.gun_coppergun_clip_ammo = clip_ammo weapon.gun_coppergun run return fail
execute if score @s weapon.gun_coppergun_clip_ammo = @s weapon.gun_coppergun_ammo run return fail
function weapon:range/gun/gun/coppergun/reload
