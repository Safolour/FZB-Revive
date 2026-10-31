
execute if entity @s[scores={weapon.gun_zapper_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_zapper_ammo=0}] run scoreboard players set @s weapon.gun_zapper_clip_ammo 0
execute if entity @s[scores={weapon.gun_zapper_ammo=1..,weapon.gun_zapper_clip_ammo=0}] run function weapon:range/gun/gun/zapper/reload
execute if entity @s[scores={weapon.gun_zapper_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_zapper_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_zapper_ammo=1..}] run function weapon:range/gun/gun/zapper/summon
execute if entity @s[scores={weapon.gun_zapper_ammo=1..,weapon.gun_zapper_clip_ammo=0}] run function weapon:range/gun/gun/zapper/reload
execute if entity @s[scores={weapon.gun_zapper_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"zapper"}