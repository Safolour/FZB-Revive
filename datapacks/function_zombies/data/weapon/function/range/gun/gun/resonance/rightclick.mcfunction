execute if entity @s[scores={weapon.gun_resonance_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_resonance_ammo=0}] run scoreboard players set @s weapon.gun_resonance_clip_ammo 0
execute if entity @s[scores={weapon.gun_resonance_ammo=1..,weapon.gun_resonance_clip_ammo=0}] run function weapon:range/gun/gun/resonance/reload
execute if entity @s[scores={weapon.gun_resonance_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_resonance_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_resonance_ammo=1..}] run function weapon:range/gun/gun/resonance/summon
execute if entity @s[scores={weapon.gun_resonance_ammo=1..,weapon.gun_resonance_clip_ammo=0}] run function weapon:range/gun/gun/resonance/reload
execute if entity @s[scores={weapon.gun_resonance_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"resonance"}
