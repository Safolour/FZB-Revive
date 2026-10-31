

execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_ammo=0}] run return fail
execute if score @s weapon.gun_ultimategolddiggeriii_clip_ammo = clip_ammo weapon.gun_ultimategolddiggeriii run return fail
execute if score @s weapon.gun_ultimategolddiggeriii_clip_ammo = @s weapon.gun_ultimategolddiggeriii_ammo run return fail
function weapon:range/gun/gun/ultimategolddiggeriii/reload
