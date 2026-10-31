

execute if entity @s[scores={weapon.gun_rainbowsniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowsniper_ammo=0}] run return fail
execute if score @s weapon.gun_rainbowsniper_clip_ammo = clip_ammo weapon.gun_rainbowsniper run return fail
execute if score @s weapon.gun_rainbowsniper_clip_ammo = @s weapon.gun_rainbowsniper_ammo run return fail
function weapon:range/gun/gun/rainbowsniper/reload
