execute if entity @s[scores={weapon.gun_ultimateseason_winter_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_winter_ammo=0}] run scoreboard players set @s weapon.gun_ultimateseason_winter_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateseason_winter_ammo=1..,weapon.gun_ultimateseason_winter_clip_ammo=0}] run function weapon:range/gun/gun/ultimateseason_winter/reload
execute if entity @s[scores={weapon.gun_ultimateseason_winter_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_winter_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateseason_winter_ammo=1..}] run function weapon:range/gun/gun/ultimateseason_winter/summon
execute if entity @s[scores={weapon.gun_ultimateseason_winter_ammo=1..,weapon.gun_ultimateseason_winter_clip_ammo=0}] run function weapon:range/gun/gun/ultimateseason_winter/reload
execute if entity @s[scores={weapon.gun_ultimateseason_winter_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateseason_winter"}
