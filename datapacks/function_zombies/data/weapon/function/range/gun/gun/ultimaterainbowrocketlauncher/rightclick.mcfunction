execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowrocketlauncher_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_ammo=1..,weapon.gun_ultimaterainbowrocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_ammo=1..,weapon.gun_ultimaterainbowrocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrocketlauncher/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrocketlauncher_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrocketlauncher"}
