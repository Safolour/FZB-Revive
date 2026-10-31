execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_ammo=0}] run scoreboard players set @s weapon.gun_ultimatesoulflamethrower_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_ammo=1..,weapon.gun_ultimatesoulflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ultimatesoulflamethrower/reload
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_ammo=1..}] run function weapon:range/gun/gun/ultimatesoulflamethrower/summon
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_ammo=1..,weapon.gun_ultimatesoulflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/ultimatesoulflamethrower/reload
execute if entity @s[scores={weapon.gun_ultimatesoulflamethrower_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatesoulflamethrower"}
