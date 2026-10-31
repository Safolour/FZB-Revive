execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatesoulflamethrower_clip_ammo = clip_ammo weapon.gun_ultimatesoulflamethrower run return fail
execute if score @s weapon.gun_ultimatesoulflamethrower_clip_ammo = @s weapon.gun_ultimatesoulflamethrower_ammo run return fail
function weapon:range/gun/gun/ultimatesoulflamethrower/reload
