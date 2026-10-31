
execute if entity @s[scores={weapon.gun_sniper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_sniper_ammo=0}] run scoreboard players set @s weapon.gun_sniper_clip_ammo 0
execute if entity @s[scores={weapon.gun_sniper_ammo=1..,weapon.gun_sniper_clip_ammo=0}] run function weapon:range/gun/gun/sniper/reload
execute if entity @s[scores={weapon.gun_sniper_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_sniper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_sniper_ammo=1..}] run function weapon:range/gun/gun/sniper/summon
execute if entity @s[scores={weapon.gun_sniper_ammo=1..,weapon.gun_sniper_clip_ammo=0}] run function weapon:range/gun/gun/sniper/reload
execute if entity @s[scores={weapon.gun_sniper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"sniper"}