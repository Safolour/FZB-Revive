
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterainbowsniper_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=1..,weapon.gun_ultimaterainbowsniper_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniper/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=1..}] run function weapon:range/gun/gun/ultimaterainbowsniper/summon
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=1..,weapon.gun_ultimaterainbowsniper_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterainbowsniper/reload
execute if entity @s[scores={weapon.gun_ultimaterainbowsniper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterainbowsniper"}