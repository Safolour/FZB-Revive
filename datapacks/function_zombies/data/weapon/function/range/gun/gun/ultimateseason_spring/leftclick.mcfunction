execute if entity @s[scores={weapon.gun_ultimateseason_spring_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_spring_ammo=0}] run return fail
execute if score @s weapon.gun_ultimateseason_spring_clip_ammo = clip_ammo weapon.gun_ultimateseason_spring run return fail
execute if score @s weapon.gun_ultimateseason_spring_clip_ammo = @s weapon.gun_ultimateseason_spring_ammo run return fail
function weapon:range/gun/gun/ultimateseason_spring/reload
