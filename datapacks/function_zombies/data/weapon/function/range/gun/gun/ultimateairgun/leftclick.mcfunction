
execute if entity @s[scores={weapon.gun_ultimateairgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateairgun_ammo=0}] run return fail
execute if score @s weapon.gun_ultimateairgun_clip_ammo = clip_ammo weapon.gun_ultimateairgun run return fail
execute if score @s weapon.gun_ultimateairgun_clip_ammo = @s weapon.gun_ultimateairgun_ammo run return fail
function weapon:range/gun/gun/ultimateairgun/reload
