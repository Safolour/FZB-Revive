execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowshotgunii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowshotgunii run return fail
execute if score @s weapon.gun_ultimaterainbowshotgunii_clip_ammo = @s weapon.gun_ultimaterainbowshotgunii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowshotgunii/reload
