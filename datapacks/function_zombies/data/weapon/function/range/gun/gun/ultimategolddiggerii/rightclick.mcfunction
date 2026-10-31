
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_ammo=0}] run scoreboard players set @s weapon.gun_ultimategolddiggerii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_ammo=1..,weapon.gun_ultimategolddiggerii_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggerii/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_ammo=1..}] run function weapon:range/gun/gun/ultimategolddiggerii/summon
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_ammo=1..,weapon.gun_ultimategolddiggerii_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddiggerii/reload
execute if entity @s[scores={weapon.gun_ultimategolddiggerii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimategolddiggerii"}