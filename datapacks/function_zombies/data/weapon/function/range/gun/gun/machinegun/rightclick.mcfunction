
execute if entity @s[scores={weapon.gun_machinegun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_machinegun_ammo=0}] run scoreboard players set @s weapon.gun_machinegun_clip_ammo 0
execute if entity @s[scores={weapon.gun_machinegun_ammo=1..,weapon.gun_machinegun_clip_ammo=0}] run function weapon:range/gun/gun/machinegun/reload
execute if entity @s[scores={weapon.gun_machinegun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_machinegun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_machinegun_ammo=1..}] run function weapon:range/gun/gun/machinegun/summon
execute if entity @s[scores={weapon.gun_machinegun_ammo=1..,weapon.gun_machinegun_clip_ammo=0}] run function weapon:range/gun/gun/machinegun/reload
execute if entity @s[scores={weapon.gun_machinegun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"machinegun"}