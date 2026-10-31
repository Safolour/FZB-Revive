
execute if entity @s[scores={weapon.gun_ultimatesniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesniper_ammo=0}] run scoreboard players set @s weapon.gun_ultimatesniper_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatesniper_ammo=1..,weapon.gun_ultimatesniper_clip_ammo=0}] run function weapon:range/gun/gun/ultimatesniper/reload
execute if entity @s[scores={weapon.gun_ultimatesniper_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesniper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesniper_ammo=1..}] run function weapon:range/gun/gun/ultimatesniper/summon
execute if entity @s[scores={weapon.gun_ultimatesniper_ammo=1..,weapon.gun_ultimatesniper_clip_ammo=0}] run function weapon:range/gun/gun/ultimatesniper/reload
execute if entity @s[scores={weapon.gun_ultimatesniper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatesniper"}