
execute if entity @s[scores={weapon.gun_pistol_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_pistol_ammo=0}] run scoreboard players set @s weapon.gun_pistol_clip_ammo 0
execute if entity @s[scores={weapon.gun_pistol_ammo=1..,weapon.gun_pistol_clip_ammo=0}] run function weapon:range/gun/gun/pistol/reload
execute if entity @s[scores={weapon.gun_pistol_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_pistol_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_pistol_ammo=1..}] run function weapon:range/gun/gun/pistol/summon
execute if entity @s[scores={weapon.gun_pistol_ammo=1..,weapon.gun_pistol_clip_ammo=0}] run function weapon:range/gun/gun/pistol/reload
execute if entity @s[scores={weapon.gun_pistol_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"pistol"}