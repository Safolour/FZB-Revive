
execute if entity @s[scores={weapon.gun_rocketlauncher_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rocketlauncher_ammo=0}] run scoreboard players set @s weapon.gun_rocketlauncher_clip_ammo 0
execute if entity @s[scores={weapon.gun_rocketlauncher_ammo=1..,weapon.gun_rocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/rocketlauncher/reload
execute if entity @s[scores={weapon.gun_rocketlauncher_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_rocketlauncher_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rocketlauncher_ammo=1..}] run function weapon:range/gun/gun/rocketlauncher/summon
execute if entity @s[scores={weapon.gun_rocketlauncher_ammo=1..,weapon.gun_rocketlauncher_clip_ammo=0}] run function weapon:range/gun/gun/rocketlauncher/reload
execute if entity @s[scores={weapon.gun_rocketlauncher_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rocketlauncher"}