
execute if entity @s[scores={weapon.gun_shotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_shotgun_ammo=0}] run scoreboard players set @s weapon.gun_shotgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_shotgun_ammo=1..,weapon.gun_shotgun_clip_ammo=0}] run function weapon:range/gun/gun/shotgun/reload
execute if entity @s[scores={weapon.gun_shotgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_shotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_shotgun_ammo=1..}] run function weapon:range/gun/gun/shotgun/summon
execute if entity @s[scores={weapon.gun_shotgun_ammo=1..,weapon.gun_shotgun_clip_ammo=0}] run function weapon:range/gun/gun/shotgun/reload
execute if entity @s[scores={weapon.gun_shotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"shotgun"}