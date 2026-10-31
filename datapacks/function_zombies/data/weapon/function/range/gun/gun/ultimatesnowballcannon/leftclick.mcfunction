

execute if entity @s[scores={weapon.gun_ultimatesnowballcannon_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesnowballcannon_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatesnowballcannon_clip_ammo = clip_ammo weapon.gun_ultimatesnowballcannon run return fail
execute if score @s weapon.gun_ultimatesnowballcannon_clip_ammo = @s weapon.gun_ultimatesnowballcannon_ammo run return fail
function weapon:range/gun/gun/ultimatesnowballcannon/reload
