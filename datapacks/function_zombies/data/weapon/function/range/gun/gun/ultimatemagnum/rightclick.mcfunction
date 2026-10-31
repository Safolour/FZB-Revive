
execute if entity @s[scores={weapon.gun_ultimatemagnum_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemagnum_ammo=0}] run scoreboard players set @s weapon.gun_ultimatemagnum_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatemagnum_ammo=1..,weapon.gun_ultimatemagnum_clip_ammo=0}] run function weapon:range/gun/gun/ultimatemagnum/reload
execute if entity @s[scores={weapon.gun_ultimatemagnum_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemagnum_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatemagnum_ammo=1..}] run function weapon:range/gun/gun/ultimatemagnum/summon
execute if entity @s[scores={weapon.gun_ultimatemagnum_ammo=1..,weapon.gun_ultimatemagnum_clip_ammo=0}] run function weapon:range/gun/gun/ultimatemagnum/reload
execute if entity @s[scores={weapon.gun_ultimatemagnum_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatemagnum"}