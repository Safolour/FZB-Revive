

execute if entity @s[scores={weapon.gun_ultimateflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateflamethrower_ammo=0}] run return fail
execute if score @s weapon.gun_ultimateflamethrower_clip_ammo = clip_ammo weapon.gun_ultimateflamethrower run return fail
execute if score @s weapon.gun_ultimateflamethrower_clip_ammo = @s weapon.gun_ultimateflamethrower_ammo run return fail
function weapon:range/gun/gun/ultimateflamethrower/reload
