
execute if entity @s[scores={weapon.gun_airgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_airgun_ammo=0}] run scoreboard players set @s weapon.gun_airgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_airgun_ammo=1..,weapon.gun_airgun_clip_ammo=0}] run function weapon:range/gun/gun/airgun/reload
execute if entity @s[scores={weapon.gun_airgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_airgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_airgun_ammo=1..}] run function weapon:range/gun/gun/airgun/summon
execute if entity @s[scores={weapon.gun_airgun_ammo=1..,weapon.gun_airgun_clip_ammo=0}] run function weapon:range/gun/gun/airgun/reload
execute if entity @s[scores={weapon.gun_airgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"airgun"}