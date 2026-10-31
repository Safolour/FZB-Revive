execute if entity @s[scores={weapon.gun_coppergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_coppergun_ammo=0}] run scoreboard players set @s weapon.gun_coppergun_clip_ammo 0
execute if entity @s[scores={weapon.gun_coppergun_ammo=1..,weapon.gun_coppergun_clip_ammo=0}] run function weapon:range/gun/gun/coppergun/reload
execute if entity @s[scores={weapon.gun_coppergun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_coppergun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_coppergun_ammo=1..}] run return run function weapon:range/gun/gun/coppergun/fire
