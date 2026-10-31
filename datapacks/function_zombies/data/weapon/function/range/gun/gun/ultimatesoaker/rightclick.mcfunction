
execute if entity @s[scores={weapon.gun_ultimatesoaker_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoaker_ammo=0}] run scoreboard players set @s weapon.gun_ultimatesoaker_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatesoaker_ammo=1..,weapon.gun_ultimatesoaker_clip_ammo=0}] run function weapon:range/gun/gun/ultimatesoaker/reload
execute if entity @s[scores={weapon.gun_ultimatesoaker_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoaker_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoaker_ammo=1..}] run function weapon:range/gun/gun/ultimatesoaker/summon
execute if entity @s[scores={weapon.gun_ultimatesoaker_ammo=1..,weapon.gun_ultimatesoaker_clip_ammo=0}] run function weapon:range/gun/gun/ultimatesoaker/reload
execute if entity @s[scores={weapon.gun_ultimatesoaker_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatesoaker"}