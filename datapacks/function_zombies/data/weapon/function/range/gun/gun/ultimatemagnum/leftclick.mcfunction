

execute if entity @s[scores={weapon.gun_ultimatemagnum_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemagnum_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatemagnum_clip_ammo = clip_ammo weapon.gun_ultimatemagnum run return fail
execute if score @s weapon.gun_ultimatemagnum_clip_ammo = @s weapon.gun_ultimatemagnum_ammo run return fail
function weapon:range/gun/gun/ultimatemagnum/reload
