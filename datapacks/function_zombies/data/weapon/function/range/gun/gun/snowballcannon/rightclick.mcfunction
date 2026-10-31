
execute if entity @s[scores={weapon.gun_snowballcannon_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_snowballcannon_ammo=0}] run scoreboard players set @s weapon.gun_snowballcannon_clip_ammo 0
execute if entity @s[scores={weapon.gun_snowballcannon_ammo=1..,weapon.gun_snowballcannon_clip_ammo=0}] run function weapon:range/gun/gun/snowballcannon/reload
execute if entity @s[scores={weapon.gun_snowballcannon_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_snowballcannon_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_snowballcannon_ammo=1..}] run function weapon:range/gun/gun/snowballcannon/summon
execute if entity @s[scores={weapon.gun_snowballcannon_ammo=1..,weapon.gun_snowballcannon_clip_ammo=0}] run function weapon:range/gun/gun/snowballcannon/reload
execute if entity @s[scores={weapon.gun_snowballcannon_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"snowballcannon"}