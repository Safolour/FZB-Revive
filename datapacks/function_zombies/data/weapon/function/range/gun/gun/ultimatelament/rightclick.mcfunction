execute if entity @s[scores={weapon.gun_ultimatelament_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=0}] run scoreboard players set @s weapon.gun_ultimatelament_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=1..,weapon.gun_ultimatelament_clip_ammo=0}] run function weapon:range/gun/gun/ultimatelament/reload
execute if entity @s[scores={weapon.gun_ultimatelament_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatelament_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=1..}] run function weapon:range/gun/gun/ultimatelament/summon
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=1..,weapon.gun_ultimatelament_clip_ammo=0}] run function weapon:range/gun/gun/ultimatelament/reload
execute if entity @s[scores={weapon.gun_ultimatelament_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatelament"}
