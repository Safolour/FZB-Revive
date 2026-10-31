

execute if entity @s[scores={weapon.gun_ultimaterifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterifle_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterifle_clip_ammo = clip_ammo weapon.gun_ultimaterifle run return fail
execute if score @s weapon.gun_ultimaterifle_clip_ammo = @s weapon.gun_ultimaterifle_ammo run return fail
function weapon:range/gun/gun/ultimaterifle/reload
