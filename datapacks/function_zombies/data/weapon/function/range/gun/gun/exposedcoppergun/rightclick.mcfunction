execute if entity @s[scores={weapon.gun_exposedcoppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_exposedcoppergun_ammo=0}] run scoreboard players set @s weapon.gun_exposedcoppergun_clip_ammo 0
execute if entity @s[scores={weapon.gun_exposedcoppergun_ammo=1..,weapon.gun_exposedcoppergun_clip_ammo=0}] run function weapon:range/gun/gun/exposedcoppergun/reload
execute if entity @s[scores={weapon.gun_exposedcoppergun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_exposedcoppergun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_exposedcoppergun_ammo=1..}] run return run function weapon:range/gun/gun/exposedcoppergun/fire
