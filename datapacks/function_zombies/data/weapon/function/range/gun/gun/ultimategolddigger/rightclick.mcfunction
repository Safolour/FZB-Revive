
execute if entity @s[scores={weapon.gun_ultimategolddigger_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddigger_ammo=0}] run scoreboard players set @s weapon.gun_ultimategolddigger_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimategolddigger_ammo=1..,weapon.gun_ultimategolddigger_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddigger/reload
execute if entity @s[scores={weapon.gun_ultimategolddigger_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddigger_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimategolddigger_ammo=1..}] run function weapon:range/gun/gun/ultimategolddigger/summon
execute if entity @s[scores={weapon.gun_ultimategolddigger_ammo=1..,weapon.gun_ultimategolddigger_clip_ammo=0}] run function weapon:range/gun/gun/ultimategolddigger/reload
execute if entity @s[scores={weapon.gun_ultimategolddigger_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimategolddigger"}