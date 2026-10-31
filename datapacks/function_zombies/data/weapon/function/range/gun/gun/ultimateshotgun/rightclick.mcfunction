
execute if entity @s[scores={weapon.gun_ultimateshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateshotgun_ammo=0}] run scoreboard players set @s weapon.gun_ultimateshotgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateshotgun_ammo=1..,weapon.gun_ultimateshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimateshotgun/reload
execute if entity @s[scores={weapon.gun_ultimateshotgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateshotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateshotgun_ammo=1..}] run function weapon:range/gun/gun/ultimateshotgun/summon
execute if entity @s[scores={weapon.gun_ultimateshotgun_ammo=1..,weapon.gun_ultimateshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimateshotgun/reload
execute if entity @s[scores={weapon.gun_ultimateshotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateshotgun"}