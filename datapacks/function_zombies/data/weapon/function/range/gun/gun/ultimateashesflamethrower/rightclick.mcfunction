
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_ammo=0}] run scoreboard players set @s weapon.gun_ultimateashesflamethrower_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_ammo=1..,weapon.gun_ultimateashesflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ultimateashesflamethrower/reload
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_ammo=1..}] run function weapon:range/gun/gun/ultimateashesflamethrower/summon
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_ammo=1..,weapon.gun_ultimateashesflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ultimateashesflamethrower/reload
execute if entity @s[scores={weapon.gun_ultimateashesflamethrower_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateashesflamethrower"}