execute if entity @s[scores={weapon.gun_oxidizedcoppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_oxidizedcoppergun_ammo=0}] run return fail
execute if score @s weapon.gun_oxidizedcoppergun_clip_ammo = clip_ammo weapon.gun_oxidizedcoppergun run return fail
execute if score @s weapon.gun_oxidizedcoppergun_clip_ammo = @s weapon.gun_oxidizedcoppergun_ammo run return fail
function weapon:range/gun/gun/oxidizedcoppergun/reload
