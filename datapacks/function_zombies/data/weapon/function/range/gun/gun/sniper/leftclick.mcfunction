

execute if entity @s[scores={weapon.gun_sniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_sniper_ammo=0}] run return fail
execute if score @s weapon.gun_sniper_clip_ammo = clip_ammo weapon.gun_sniper run return fail
execute if score @s weapon.gun_sniper_clip_ammo = @s weapon.gun_sniper_ammo run return fail
function weapon:range/gun/gun/sniper/reload
