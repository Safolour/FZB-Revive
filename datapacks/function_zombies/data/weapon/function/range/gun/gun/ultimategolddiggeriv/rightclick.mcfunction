
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_ammo=0}] run scoreboard players set @s weapon.gun_ultimategolddiggeriv_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_ammo=1..,weapon.gun_ultimategolddiggeriv_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggeriv/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_ammo=1..}] run function weapon:range/gun/gun/ultimategolddiggeriv/summon
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_ammo=1..,weapon.gun_ultimategolddiggeriv_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggeriv/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggeriv_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimategolddiggeriv"}