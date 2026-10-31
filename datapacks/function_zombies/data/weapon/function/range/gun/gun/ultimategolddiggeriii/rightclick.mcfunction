
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_ammo=0}] run scoreboard players set @s weapon.gun_ultimategolddiggeriii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_ammo=1..,weapon.gun_ultimategolddiggeriii_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggeriii/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_ammo=1..}] run function weapon:range/gun/gun/ultimategolddiggeriii/summon
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_ammo=1..,weapon.gun_ultimategolddiggeriii_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggeriii/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggeriii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimategolddiggeriii"}