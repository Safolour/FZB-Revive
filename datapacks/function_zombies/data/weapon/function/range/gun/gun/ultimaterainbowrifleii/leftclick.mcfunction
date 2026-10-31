

execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowrifleii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowrifleii run return fail
execute if score @s weapon.gun_ultimaterainbowrifleii_clip_ammo = @s weapon.gun_ultimaterainbowrifleii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowrifleii/reload
