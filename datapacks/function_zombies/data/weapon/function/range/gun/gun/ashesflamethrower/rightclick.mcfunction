
execute if entity @s[scores={weapon.gun_ashesflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=0}] run scoreboard players set @s weapon.gun_ashesflamethrower_clip_ammo 0
execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=1..,weapon.gun_ashesflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ashesflamethrower/reload
execute if entity @s[scores={weapon.gun_ashesflamethrower_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ashesflamethrower_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=1..}] run function weapon:range/gun/gun/ashesflamethrower/summon
execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=1..,weapon.gun_ashesflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ashesflamethrower/reload
execute if entity @s[scores={weapon.gun_ashesflamethrower_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ashesflamethrower"}