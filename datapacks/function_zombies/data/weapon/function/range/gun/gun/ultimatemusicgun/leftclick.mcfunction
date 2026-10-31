

execute if entity @s[scores={weapon.gun_ultimatemusicgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemusicgun_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatemusicgun_clip_ammo = clip_ammo weapon.gun_ultimatemusicgun run return fail
execute if score @s weapon.gun_ultimatemusicgun_clip_ammo = @s weapon.gun_ultimatemusicgun_ammo run return fail
function weapon:range/gun/gun/ultimatemusicgun/reload
