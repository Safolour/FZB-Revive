execute if entity @s[scores={weapon.gun_ultimateseason_summer_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_summer_ammo=0}] run scoreboard players set @s weapon.gun_ultimateseason_summer_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateseason_summer_ammo=1..,weapon.gun_ultimateseason_summer_clip_ammo=0}] run function weapon:range/gun/gun/ultimateseason_summer/reload
execute if entity @s[scores={weapon.gun_ultimateseason_summer_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_summer_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_summer_ammo=1..}] run function weapon:range/gun/gun/ultimateseason_summer/summon
execute if entity @s[scores={weapon.gun_ultimateseason_summer_ammo=1..,weapon.gun_ultimateseason_summer_clip_ammo=0}] run function weapon:range/gun/gun/ultimateseason_summer/reload
execute if entity @s[scores={weapon.gun_ultimateseason_summer_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateseason_summer"}
