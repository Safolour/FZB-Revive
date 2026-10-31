execute if entity @s[scores={weapon.gun_soulflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_soulflamethrower_ammo=0}] run return fail
execute if score @s weapon.gun_soulflamethrower_clip_ammo = clip_ammo weapon.gun_soulflamethrower run return fail
execute if score @s weapon.gun_soulflamethrower_clip_ammo = @s weapon.gun_soulflamethrower_ammo run return fail
function weapon:range/gun/gun/soulflamethrower/reload
