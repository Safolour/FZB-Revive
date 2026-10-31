

execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniperiii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimaterainbowsniperiii_clip_ammo = clip_ammo weapon.gun_ultimaterainbowsniperiii run return fail
execute if score @s weapon.gun_ultimaterainbowsniperiii_clip_ammo = @s weapon.gun_ultimaterainbowsniperiii_ammo run return fail
function weapon:range/gun/gun/ultimaterainbowsniperiii/reload
