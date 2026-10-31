execute if entity @s[scores={weapon.gun_ultimatelament_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatelament_clip_ammo = clip_ammo weapon.gun_ultimatelament run return fail
execute if score @s weapon.gun_ultimatelament_clip_ammo = @s weapon.gun_ultimatelament_ammo run return fail
function weapon:range/gun/gun/ultimatelament/reload
