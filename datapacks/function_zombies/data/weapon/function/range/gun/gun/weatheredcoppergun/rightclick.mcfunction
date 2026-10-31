execute if entity @s[scores={weapon.gun_weatheredcoppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_weatheredcoppergun_ammo=0}] run scoreboard players set @s weapon.gun_weatheredcoppergun_clip_ammo 0
execute if entity @s[scores={weapon.gun_weatheredcoppergun_ammo=1..,weapon.gun_weatheredcoppergun_clip_ammo=0}] run function weapon:range/gun/gun/weatheredcoppergun/reload
execute if entity @s[scores={weapon.gun_weatheredcoppergun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_weatheredcoppergun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_weatheredcoppergun_ammo=1..}] run return run function weapon:range/gun/gun/weatheredcoppergun/fire
