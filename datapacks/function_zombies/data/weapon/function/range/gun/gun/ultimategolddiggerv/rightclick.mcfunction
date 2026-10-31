
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_ammo=0}] run scoreboard players set @s weapon.gun_ultimategolddiggerv_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_ammo=1..,weapon.gun_ultimategolddiggerv_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggerv/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_ammo=1..}] run function weapon:range/gun/gun/ultimategolddiggerv/summon
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_ammo=1..,weapon.gun_ultimategolddiggerv_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggerv/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggerv_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimategolddiggerv"}