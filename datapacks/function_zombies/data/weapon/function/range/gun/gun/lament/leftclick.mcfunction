execute if entity @s[scores={weapon.gun_lament_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_lament_ammo=0}] run return fail
execute if score @s weapon.gun_lament_clip_ammo = clip_ammo weapon.gun_lament run return fail
execute if score @s weapon.gun_lament_clip_ammo = @s weapon.gun_lament_ammo run return fail
function weapon:range/gun/gun/lament/reload
