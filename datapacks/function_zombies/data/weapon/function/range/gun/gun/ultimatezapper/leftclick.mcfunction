

execute if entity @s[scores={weapon.gun_ultimatezapper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatezapper_clip_ammo = clip_ammo weapon.gun_ultimatezapper run return fail
execute if score @s weapon.gun_ultimatezapper_clip_ammo = @s weapon.gun_ultimatezapper_ammo run return fail
function weapon:range/gun/gun/ultimatezapper/reload
