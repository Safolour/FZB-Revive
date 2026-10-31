
execute if entity @s[scores={weapon.gun_soaker_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_soaker_ammo=0}] run scoreboard players set @s weapon.gun_soaker_clip_ammo 0
execute if entity @s[scores={weapon.gun_soaker_ammo=1..,weapon.gun_soaker_clip_ammo=0}] run function weapon:range/gun/gun/soaker/reload
execute if entity @s[scores={weapon.gun_soaker_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_soaker_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_soaker_ammo=1..}] run function weapon:range/gun/gun/soaker/summon
execute if entity @s[scores={weapon.gun_soaker_ammo=1..,weapon.gun_soaker_clip_ammo=0}] run function weapon:range/gun/gun/soaker/reload
execute if entity @s[scores={weapon.gun_soaker_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"soaker"}