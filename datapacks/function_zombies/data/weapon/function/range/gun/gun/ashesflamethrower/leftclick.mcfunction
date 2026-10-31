

execute if entity @s[scores={weapon.gun_ashesflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=0}] run return fail
execute if score @s weapon.gun_ashesflamethrower_clip_ammo = clip_ammo weapon.gun_ashesflamethrower run return fail
execute if score @s weapon.gun_ashesflamethrower_clip_ammo = @s weapon.gun_ashesflamethrower_ammo run return fail
function weapon:range/gun/gun/ashesflamethrower/reload
