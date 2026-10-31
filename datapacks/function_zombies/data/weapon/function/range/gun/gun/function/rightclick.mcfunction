
execute if entity @s[scores={weapon.gun_function_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_function_ammo=0}] run scoreboard players set @s weapon.gun_function_clip_ammo 0
execute if entity @s[scores={weapon.gun_function_ammo=1..,weapon.gun_function_clip_ammo=0}] run function weapon:range/gun/gun/function/reload
execute if entity @s[scores={weapon.gun_function_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_function_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_function_ammo=1..}] run function weapon:range/gun/gun/function/summon
execute if entity @s[scores={weapon.gun_function_ammo=1..,weapon.gun_function_clip_ammo=0}] run function weapon:range/gun/gun/function/reload
execute if entity @s[scores={weapon.gun_function_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"function"}