execute if entity @s[scores={weapon.gun_ultimateaurora_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=0}] run scoreboard players set @s weapon.gun_ultimateaurora_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=1..,weapon.gun_ultimateaurora_clip_ammo=0}] run function weapon:range/gun/gun/ultimateaurora/reload
execute if entity @s[scores={weapon.gun_ultimateaurora_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateaurora_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=1..}] run function weapon:range/gun/gun/ultimateaurora/summon
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=1..,weapon.gun_ultimateaurora_clip_ammo=0}] run function weapon:range/gun/gun/ultimateaurora/reload
execute if entity @s[scores={weapon.gun_ultimateaurora_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateaurora"}
