execute if entity @s[scores={weapon.gun_rainbowshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowshotgun_ammo=0}] run return fail
execute if score @s weapon.gun_rainbowshotgun_clip_ammo = clip_ammo weapon.gun_rainbowshotgun run return fail
execute if score @s weapon.gun_rainbowshotgun_clip_ammo = @s weapon.gun_rainbowshotgun_ammo run return fail
function weapon:range/gun/gun/rainbowshotgun/reload
