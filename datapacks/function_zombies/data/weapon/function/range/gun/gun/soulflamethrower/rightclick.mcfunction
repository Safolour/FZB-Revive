execute if entity @s[scores={weapon.gun_soulflamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_soulflamethrower_ammo=0}] run scoreboard players set @s weapon.gun_soulflamethrower_clip_ammo 0
execute if entity @s[scores={weapon.gun_soulflamethrower_ammo=1..,weapon.gun_soulflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/soulflamethrower/reload
execute if entity @s[scores={weapon.gun_soulflamethrower_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_soulflamethrower_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_soulflamethrower_ammo=1..}] run function weapon:range/gun/gun/soulflamethrower/summon
execute if entity @s[scores={weapon.gun_soulflamethrower_ammo=1..,weapon.gun_soulflamethrower_clip_ammo=0}] run function weapon:range/gun/gun/soulflamethrower/reload
execute if entity @s[scores={weapon.gun_soulflamethrower_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"soulflamethrower"}
