execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowshotguniii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=1..,weapon.gun_ultimaterainbowshotguniii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotguniii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowshotguniii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=1..,weapon.gun_ultimaterainbowshotguniii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowshotguniii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowshotguniii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowshotguniii"}
