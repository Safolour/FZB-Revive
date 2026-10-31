
execute if entity @s[scores={weapon.gun_ultimatezapper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=0}] run scoreboard players set @s weapon.gun_ultimatezapper_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=1..,weapon.gun_ultimatezapper_clip_ammo=0}] run function weapon:range/gun/gun/ultimatezapper/reload
execute if entity @s[scores={weapon.gun_ultimatezapper_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatezapper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=1..}] run function weapon:range/gun/gun/ultimatezapper/summon
execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=1..,weapon.gun_ultimatezapper_clip_ammo=0}] run function weapon:range/gun/gun/ultimatezapper/reload
execute if entity @s[scores={weapon.gun_ultimatezapper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatezapper"}