
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_ammo=0}] run scoreboard players set @s weapon.gun_ultimatedoubleshotgun_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_ammo=1..,weapon.gun_ultimatedoubleshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatedoubleshotgun/reload
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_ammo=1..}] run function weapon:range/gun/gun/ultimatedoubleshotgun/summon
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_ammo=1..,weapon.gun_ultimatedoubleshotgun_clip_ammo=0}] run function weapon:range/gun/gun/ultimatedoubleshotgun/reload
execute if entity @s[scores={weapon.gun_ultimatedoubleshotgun_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatedoubleshotgun"}