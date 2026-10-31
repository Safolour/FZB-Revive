
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_ammo=0}] run scoreboard players set @s weapon.gun_ultimatedoubleshotgunii_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_ammo=1..,weapon.gun_ultimatedoubleshotgunii_clip_ammo=0}] run function weapon:range/gun/gun/ultimatedoubleshotgunii/reload
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_ammo=1..}] run function weapon:range/gun/gun/ultimatedoubleshotgunii/summon
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_ammo=1..,weapon.gun_ultimatedoubleshotgunii_clip_ammo=0}] run function weapon:range/gun/gun/ultimatedoubleshotgunii/reload
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgunii_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatedoubleshotgunii"}