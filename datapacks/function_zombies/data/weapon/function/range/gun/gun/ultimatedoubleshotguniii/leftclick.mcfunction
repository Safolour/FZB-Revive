

execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatedoubleshotguniii_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotguniii run return fail
execute if score @s weapon.gun_ultimatedoubleshotguniii_clip_ammo = @s weapon.gun_ultimatedoubleshotguniii_ammo run return fail
function weapon:range/gun/gun/ultimatedoubleshotguniii/reload
