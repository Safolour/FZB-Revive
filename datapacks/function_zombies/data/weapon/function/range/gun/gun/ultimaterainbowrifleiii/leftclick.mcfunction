

execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleiii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowrifleiii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifleiii run return fail
execute if score @s weapon.gun_ultimaterainbowrifleiii_clip_ammo = @s weapon.gun_ultimaterainbowrifleiii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowrifleiii/reload
