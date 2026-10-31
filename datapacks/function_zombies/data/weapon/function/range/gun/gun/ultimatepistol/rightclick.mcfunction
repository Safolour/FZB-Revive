
execute if entity @s[scores={weapon.gun_ultimatepistol_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=0}] run scoreboard players set @s weapon.gun_ultimatepistol_clip_ammo 0
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=1..,weapon.gun_ultimatepistol_clip_ammo=0}] run function weapon:range/gun/gun/ultimatepistol/reload
execute if entity @s[scores={weapon.gun_ultimatepistol_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepistol_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=1..}] run function weapon:range/gun/gun/ultimatepistol/summon
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=1..,weapon.gun_ultimatepistol_clip_ammo=0}] run function weapon:range/gun/gun/ultimatepistol/reload
execute if entity @s[scores={weapon.gun_ultimatepistol_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"ultimatepistol"}