
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowrifle_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=1..,weapon.gun_ultimaterainbowrifle_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifle/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowrifle/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=1..,weapon.gun_ultimaterainbowrifle_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifle/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifle_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrifle"}