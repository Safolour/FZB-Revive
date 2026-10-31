execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=0}] run scoreboard players set @s weapon.gun_rainbowrocketlauncher_clip_ammo 0
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=1..,weapon.gun_rainbowrocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/rainbowrocketlauncher/reload
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=1..}] run function weapon:range/gun/gun/rainbowrocketlauncher/summon
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=1..,weapon.gun_rainbowrocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/rainbowrocketlauncher/reload
execute if entity @s[scores={weapon.gun_rainbowrocketlauncher_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rainbowrocketlauncher"}
