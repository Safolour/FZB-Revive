
execute if entity @s[scores={weapon.gun_magnum_reload=0..}] run return fail
execute if entity @s[scores={weapon.gun_magnum_ammo=0}] run scoreboard players set @s weapon.gun_magnum_clip_ammo 0
execute if entity @s[scores={weapon.gun_magnum_ammo=1..,weapon.gun_magnum_clip_ammo=0}] run function weapon:range/gun/gun/magnum/reload
execute if entity @s[scores={weapon.gun_magnum_rate=1..}] run return fail
execute if entity @s[scores={weapon.gun_magnum_clip_ammo=0}] run return fail
execute if entity @s[scores={weapon.gun_magnum_ammo=1..}] run function weapon:range/gun/gun/magnum/summon
execute if entity @s[scores={weapon.gun_magnum_ammo=1..,weapon.gun_magnum_clip_ammo=0}] run function weapon:range/gun/gun/magnum/reload
execute if entity @s[scores={weapon.gun_magnum_ammo=0}] run function weapon:range/gun/slot/nodurability {gun:"magnum"}