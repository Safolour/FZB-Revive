

execute if entity @s[scores={weapon.gun_shotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_shotgun_ammo=0}] run return fail
execute if score @s weapon.gun_shotgun_clip_ammo = clip_ammo weapon.gun_shotgun run return fail
execute if score @s weapon.gun_shotgun_clip_ammo = @s weapon.gun_shotgun_ammo run return fail
function weapon:range/gun/gun/shotgun/reload
