execute if entity @s[scores={weapon.gun_rainbowshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowshotgun_ammo=0}] run scoreboard players set @s weapon.gun_rainbowshotgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_rainbowshotgun_ammo=1..,weapon.gun_rainbowshotgun_clip_ammo=0}] run function weapon:range/gun/gun/rainbowshotgun/reload
execute if entity @s[scores={weapon.gun_rainbowshotgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowshotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rainbowshotgun_ammo=1..}] run function weapon:range/gun/gun/rainbowshotgun/summon
execute if entity @s[scores={weapon.gun_rainbowshotgun_ammo=1..,weapon.gun_rainbowshotgun_clip_ammo=0}] run function weapon:range/gun/gun/rainbowshotgun/reload
execute if entity @s[scores={weapon.gun_rainbowshotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rainbowshotgun"}
