
execute if entity @s[scores={weapon.gun_flamethrower_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_flamethrower_ammo=0}] run scoreboard players set @s weapon.gun_flamethrower_clip_ammo 0
execute if entity @s[scores={weapon.gun_flamethrower_ammo=1..,weapon.gun_flamethrower_clip_ammo=0}] run function weapon:range/gun/gun/flamethrower/reload
execute if entity @s[scores={weapon.gun_flamethrower_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_flamethrower_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_flamethrower_ammo=1..}] run function weapon:range/gun/gun/flamethrower/summon
execute if entity @s[scores={weapon.gun_flamethrower_ammo=1..,weapon.gun_flamethrower_clip_ammo=0}] run function weapon:range/gun/gun/flamethrower/reload
execute if entity @s[scores={weapon.gun_flamethrower_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"flamethrower"}