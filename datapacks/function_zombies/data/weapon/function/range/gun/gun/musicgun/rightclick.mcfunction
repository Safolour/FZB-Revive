
execute if entity @s[scores={weapon.gun_musicgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_musicgun_ammo=0}] run scoreboard players set @s weapon.gun_musicgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_musicgun_ammo=1..,weapon.gun_musicgun_clip_ammo=0}] run function weapon:range/gun/gun/musicgun/reload
execute if entity @s[scores={weapon.gun_musicgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_musicgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_musicgun_ammo=1..}] run function weapon:range/gun/gun/musicgun/summon
execute if entity @s[scores={weapon.gun_musicgun_ammo=1..,weapon.gun_musicgun_clip_ammo=0}] run function weapon:range/gun/gun/musicgun/reload
execute if entity @s[scores={weapon.gun_musicgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"musicgun"}