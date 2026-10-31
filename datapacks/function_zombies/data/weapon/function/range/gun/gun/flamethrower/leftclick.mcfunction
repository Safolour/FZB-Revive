

execute if entity @s[scores={weapon.gun_flamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_flamethrower_ammo=0}] run return fail
execute if score @s weapon.gun_flamethrower_clip_ammo = clip_ammo weapon.gun_flamethrower run return fail
execute if score @s weapon.gun_flamethrower_clip_ammo = @s weapon.gun_flamethrower_ammo run return fail
function weapon:range/gun/gun/flamethrower/reload
