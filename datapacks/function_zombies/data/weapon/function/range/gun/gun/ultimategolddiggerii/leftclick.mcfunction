

execute if entity @s[scores={weapon.gun_ultimategolddiggerii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimategolddiggerii_clip_ammo = clip_ammo weapon.gun_ultimategolddiggerii run return fail
execute if score @s weapon.gun_ultimategolddiggerii_clip_ammo = @s weapon.gun_ultimategolddiggerii_ammo run return fail
function weapon:range/gun/gun/ultimategolddiggerii/reload
