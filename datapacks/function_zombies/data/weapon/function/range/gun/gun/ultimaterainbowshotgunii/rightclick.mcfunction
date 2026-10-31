execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowshotgunii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=1..,weapon.gun_ultimaterainbowshotgunii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=1..,weapon.gun_ultimaterainbowshotgunii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotgunii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotgunii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowshotgunii"}
