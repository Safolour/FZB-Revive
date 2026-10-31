

execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimatedoubleshotgunii_clip_ammo = clip_ammo weapon.gun_ultimatedoubleshotgunii run return fail
execute if score @s weapon.gun_ultimatedoubleshotgunii_clip_ammo = @s weapon.gun_ultimatedoubleshotgunii_ammo run return fail
function weapon:range/gun/gun/ultimatedoubleshotgunii/reload
