
execute if entity @s[scores={weapon.gun_ultimaterifle_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterifle_ammo=0}] run scoreboard players set @s weapon.gun_ultimaterifle_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimaterifle_ammo=1..,weapon.gun_ultimaterifle_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterifle/reload
execute if entity @s[scores={weapon.gun_ultimaterifle_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterifle_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimaterifle_ammo=1..}] run function weapon:range/gun/gun/ultimaterifle/summon
execute if entity @s[scores={weapon.gun_ultimaterifle_ammo=1..,weapon.gun_ultimaterifle_clip_ammo=0}] run function weapon:range/gun/gun/ultimaterifle/reload
execute if entity @s[scores={weapon.gun_ultimaterifle_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimaterifle"}