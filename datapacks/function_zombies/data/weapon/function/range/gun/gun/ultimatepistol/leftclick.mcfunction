

execute if entity @s[scores={weapon.gun_ultimatepistol_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatepistol_clip_ammo = clip_ammo weapon.gun_ultimatepistol run return fail
execute if score @s weapon.gun_ultimatepistol_clip_ammo = @s weapon.gun_ultimatepistol_ammo run return fail
function weapon:range/gun/gun/ultimatepistol/reload
