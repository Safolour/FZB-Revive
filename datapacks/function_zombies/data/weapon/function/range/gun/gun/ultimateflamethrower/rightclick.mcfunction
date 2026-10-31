
execute if entity @s[scores={weapon.gun_ultimateflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateflamethrower_ammo=0}] run scoreboard players set @s weapon.gun_ultimateflamethrower_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimateflamethrower_ammo=1..,weapon.gun_ultimateflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ultimateflamethrower/reload
execute if entity @s[scores={weapon.gun_ultimateflamethrower_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimateflamethrower_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimateflamethrower_ammo=1..}] run function weapon:range/gun/gun/ultimateflamethrower/summon
execute if entity @s[scores={weapon.gun_ultimateflamethrower_ammo=1..,weapon.gun_ultimateflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ultimateflamethrower/reload
execute if entity @s[scores={weapon.gun_ultimateflamethrower_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimateflamethrower"}