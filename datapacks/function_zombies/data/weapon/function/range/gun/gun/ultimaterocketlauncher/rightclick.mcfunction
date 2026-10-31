
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterocketlauncher_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_ammo=1..,weapon.gun_ultimaterocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterocketlauncher/reload
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_ammo=1..}] run function weapon:range/gun/gun/ultimaterocketlauncher/summon
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_ammo=1..,weapon.gun_ultimaterocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterocketlauncher/reload
execute if entity @s[scores={weapon.gun_ultimaterocketlauncher_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterocketlauncher"}