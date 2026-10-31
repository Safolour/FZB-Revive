

execute if entity @s[scores={weapon.gun_ultimateshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateshotgun_ammo=0}] run return fail
execute if score @s weapon.gun_ultimateshotgun_clip_ammo = clip_ammo weapon.gun_ultimateshotgun run return fail
execute if score @s weapon.gun_ultimateshotgun_clip_ammo = @s weapon.gun_ultimateshotgun_ammo run return fail
function weapon:range/gun/gun/ultimateshotgun/reload
