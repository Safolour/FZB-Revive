
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowrifleii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=1..,weapon.gun_ultimaterainbowrifleii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifleii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowrifleii/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=1..,weapon.gun_ultimaterainbowrifleii_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowrifleii/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowrifleii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowrifleii"}