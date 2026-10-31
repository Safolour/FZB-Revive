

execute if entity @s[scores={weapon.gun_function_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_function_ammo=0}] run return fail
execute if score @s weapon.gun_function_clip_ammo = clip_ammo weapon.gun_function run return fail
execute if score @s weapon.gun_function_clip_ammo = @s weapon.gun_function_ammo run return fail
function weapon:range/gun/gun/function/reload
