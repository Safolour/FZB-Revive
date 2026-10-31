execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowshotgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=1..,weapon.gun_ultimaterainbowshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotgun/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowshotgun/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=1..,weapon.gun_ultimaterainbowshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotgun/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowshotgun"}
