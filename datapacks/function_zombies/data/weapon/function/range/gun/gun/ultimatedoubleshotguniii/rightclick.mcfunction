
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_ammo=0}] run scoreboard players set @s weapon.gun_ultimatedoubleshotguniii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_ammo=1..,weapon.gun_ultimatedoubleshotguniii_clip_ammo=0}] run function weapon:range/gun/gun/ultimatedoubleshotguniii/reload
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_ammo=1..}] run function weapon:range/gun/gun/ultimatedoubleshotguniii/summon
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_ammo=1..,weapon.gun_ultimatedoubleshotguniii_clip_ammo=0}] run function weapon:range/gun/gun/ultimatedoubleshotguniii/reload
execute if entity @s[scores={weapon.gun_ultimatedoubleshotguniii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatedoubleshotguniii"}