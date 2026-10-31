
execute if entity @s[scores={weapon.gun_ultimateeldergun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateeldergun_ammo=0}] run scoreboard players set @s weapon.gun_ultimateeldergun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateeldergun_ammo=1..,weapon.gun_ultimateeldergun_clip_ammo=0}] run function weapon:range/gun/gun/ultimateeldergun/reload
execute if entity @s[scores={weapon.gun_ultimateeldergun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateeldergun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateeldergun_ammo=1..}] run function weapon:range/gun/gun/ultimateeldergun/summon
execute if entity @s[scores={weapon.gun_ultimateeldergun_ammo=1..,weapon.gun_ultimateeldergun_clip_ammo=0}] run function weapon:range/gun/gun/ultimateeldergun/reload
execute if entity @s[scores={weapon.gun_ultimateeldergun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateeldergun"}