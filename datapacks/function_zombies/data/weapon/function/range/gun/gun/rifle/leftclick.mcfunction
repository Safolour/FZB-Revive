

execute if entity @s[scores={weapon.gun_rifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rifle_ammo=0}] run return fail
execute if score @s weapon.gun_rifle_clip_ammo = clip_ammo weapon.gun_rifle run return fail
execute if score @s weapon.gun_rifle_clip_ammo = @s weapon.gun_rifle_ammo run return fail
function weapon:range/gun/gun/rifle/reload
