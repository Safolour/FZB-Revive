
execute if entity @s[scores={weapon.gun_rainbowrifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=0}] run scoreboard players set @s weapon.gun_rainbowrifle_clip_ammo 0
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=1..,weapon.gun_rainbowrifle_clip_ammo=0}] run function weapon:range/gun/gun/rainbowrifle/reload
execute if entity @s[scores={weapon.gun_rainbowrifle_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrifle_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=1..}] run function weapon:range/gun/gun/rainbowrifle/summon
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=1..,weapon.gun_rainbowrifle_clip_ammo=0}] run function weapon:range/gun/gun/rainbowrifle/reload
execute if entity @s[scores={weapon.gun_rainbowrifle_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"rainbowrifle"}